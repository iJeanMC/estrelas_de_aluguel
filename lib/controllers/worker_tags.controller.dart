import 'package:sqflite/sqflite.dart';
import '../models/worker_tags.model.dart';

class Worker_TagsController {
  Future<Database> getDatabase() async {
    var path = await getDatabasesPath();
    path += 'uservice.db';

    Database database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute(
          'CREATE TABLE worker_tags (id INTEGER PRIMARY KEY autoincrement, tag_name TEXT)');
    });

    return database;
  }

  Future<void> create(Worker_tags tags) async {
    var database = await getDatabase();
    await database.insert('Worker_tags', tags.toMap());
    await database.close();
  }

  Future<List<Map>> read() async {
    var database = await getDatabase();
    List<Map> taggs = await database.rawQuery('SELECT * FROM worker_tags');
    await database.close();
    return taggs;
  }

  Future<List<Map>> search(String value) async {
    var database = await getDatabase();
    List<Map> taggs = await database.rawQuery("SELECT * FROM worker WHERE id");
    await database.close();
    return taggs;
  }

  Future<void> update(Worker_tags tags) async {
    var database = await getDatabase();
    await database.update('Worker_tags', tags.toMap(),
        where: 'id = ?', whereArgs: [tags.id]);
    await database.close();
  }

/*  Future<void> delete(Task task) async {
    var database = await getDatabase();
    await database.delete('Task', where: 'id = ?', whereArgs: [task.id]);
    await database.close();
  } */
}
