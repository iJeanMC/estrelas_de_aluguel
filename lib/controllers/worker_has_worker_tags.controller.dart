import 'package:sqflite/sqflite.dart';
import '../models/worker_has_worker_tags.model.dart';

class Worker_TagsController {
  Future<Database> getDatabase() async {
    var path = await getDatabasesPath();
    path += 'uservice.db';

    Database database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute(
          'CREATE TABLE worker_has_worker_tags (tagid INTEGER NOT NULL, FOREIGN KEY (tagid) REFERENCES worker_tags(id), workerid INTEGER NOT NULL, FOREIGN KEY (workerid), REFERENCES worker(id))');
    });

    return database;
  }

  Future<void> create(Worker_has_worker_tags hastags) async {
    var database = await getDatabase();
    await database.insert('worker_has_worker_tags', hastags.toMap());
    await database.close();
  }

  Future<List<Map>> read() async {
    var database = await getDatabase();
    List<Map> taggs = await database.rawQuery('SELECT * FROM worker_has_worker_tags');
    await database.close();
    return taggs;
  }

  Future<List<Map>> search(String value) async {
    var database = await getDatabase();
    List<Map> taggs =
        await database.rawQuery("SELECT * FROM worker_has_worker_tags WHERE tagid");
    await database.close();
    return taggs;
  }

  Future<void> update(Worker_has_worker_tags hastags) async {
    var database = await getDatabase();
    await database.update('Worker_tags', hastags.toMap(),
        where: 'tagid = ?', whereArgs: [hastags.tagid]);
    await database.close();
  }

/*  Future<void> delete(Task task) async {
    var database = await getDatabase();
    await database.delete('Task', where: 'id = ?', whereArgs: [task.id]);
    await database.close();
  } */
}
