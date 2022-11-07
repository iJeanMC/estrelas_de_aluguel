import 'package:sqflite/sqflite.dart';
import '../models/comentarios.model.dart';

class Worker_TagsController {
  Future<Database> getDatabase() async {
    var path = await getDatabasesPath();
    path += 'uservice.db';

    Database database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute(
          'CREATE TABLE comentarios (id INTEGER PRIMARY KEY autoincrement, reviewid INTEGER NOT NULL, FOREIGN KEY (reviewid) REFERENCES reviews(id), userid INTEGER NOT NULL, FOREIGN KEY (userid) REFERENCES users(id), likes INTEGER NOT NULL, deslikes INTEGER NOT NULL, text_body TEXT NOT NULL)');
    });

    return database;
  }

  Future<void> create(Comentarios coment) async {
    var database = await getDatabase();
    await database.insert('Comentarios', coment.toMap());
    await database.close();
  }

  Future<List<Map>> read() async {
    var database = await getDatabase();
    List<Map> reviews = await database.rawQuery('SELECT * FROM comentarios');
    await database.close();
    return reviews;
  }

  Future<List<Map>> search(String value) async {
    var database = await getDatabase();
    List<Map> reviews =
        await database.rawQuery("SELECT * FROM comentarios WHERE id");
    await database.close();
    return reviews;
  }

  Future<void> update(Comentarios coment) async {
    var database = await getDatabase();
    await database.update('Comentarios', coment.toMap(),
        where: 'id = ?', whereArgs: [coment.id]);
    await database.close();
  }

/*  Future<void> delete(Task task) async {
    var database = await getDatabase();
    await database.delete('Task', where: 'id = ?', whereArgs: [task.id]);
    await database.close();
  } */
}
