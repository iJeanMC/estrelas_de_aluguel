import 'package:sqflite/sqflite.dart';
import '../models/review.model.dart';

class Worker_TagsController {
  Future<Database> getDatabase() async {
    var path = await getDatabasesPath();
    path += 'uservice.db';

    Database database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute(
          'CREATE TABLE review (id INTEGER PRIMARY KEY autoincrement, stars INTEGER, text_box TEXT, title TEXT, autor_id INTEGER, FOREIGN KEY (autor_id) REFERENCES user(id), worker_reviewed INTEGER, FOREIGN KEY (worker_reviewed) REFERENCES worker(id))');
    });
    return database;
  }

  Future<void> create(Review review) async {
    var database = await getDatabase();
    await database.insert('Review', review.toMap());
    await database.close();
  }

  Future<List<Map>> read() async {
    var database = await getDatabase();
    List<Map> reviews = await database.rawQuery('SELECT * FROM review');
    await database.close();
    return reviews;
  }

  Future<List<Map>> readTop5() async {
    var database = await getDatabase();
    List<Map> reviews = await database
        .rawQuery('SELECT * FROM review ORDER BY id DESC LIMIT 5');
    await database.close();
    return reviews;
  }

  Future<List<Map>> search(String value) async {
    var database = await getDatabase();
    List<Map> reviews =
        await database.rawQuery("SELECT * FROM review WHERE id");
    await database.close();
    return reviews;
  }

  Future<void> update(Review review) async {
    var database = await getDatabase();
    await database.update('Review', review.toMap(),
        where: 'id = ?', whereArgs: [review.id]);
    await database.close();
  }

/*  Future<void> delete(Task task) async {
    var database = await getDatabase();
    await database.delete('Task', where: 'id = ?', whereArgs: [task.id]);
    await database.close();
  } */
}
