import 'package:sqflite/sqflite.dart';
import '../models/worker.model.dart';

class WorkerController {
  Future<Database> getDatabase() async {
    var path = await getDatabasesPath();
    path += 'uservice.db';

    Database database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute(
          'CREATE TABLE worker (id INTEGER PRIMARY KEY autoincrement, password_hash TEXT, workerid INTEGER, FOREIGN KEY (workerid) REFERENCES users (id))');
    });

    return database;
  }

  Future<void> create(Worker worker) async {
    var database = await getDatabase();
    await database.insert('Worker', worker.toMap());
    await database.close();
  }

  Future<List<Map>> read() async {
    var database = await getDatabase();
    List<Map> workers = await database.rawQuery('SELECT * FROM worker');
    await database.close();
    return workers;
  }

  Future<List<Map>> search(String value) async {
    var database = await getDatabase();
    List<Map> workers =
        await database.rawQuery("SELECT * FROM worker WHERE id");
    await database.close();
    return workers;
  }

  Future<void> update(Worker worker) async {
    var database = await getDatabase();
    await database.update('Worker', worker.toMap(),
        where: 'id = ?', whereArgs: [worker.id]);
    await database.close();
  }

/*  Future<void> delete(Task task) async {
    var database = await getDatabase();
    await database.delete('Task', where: 'id = ?', whereArgs: [task.id]);
    await database.close();
  } */
}
