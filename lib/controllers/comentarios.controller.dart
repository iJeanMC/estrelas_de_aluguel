import 'package:sqflite/sqflite.dart';
import '../models/comentarios.model.dart';

class Worker_TagsController {
  Future<Database> getDatabase() async {
    var path = await getDatabasesPath();
    path += 'uservice.db';

    Database database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute(
          'CREATE TABLE comentarios (id INTEGER PRIMARY KEY autoincrement, reviewed INTEGER, FOREIGN KEY (reviewed) REFERENCES review(id), iduser INTEGER, FOREIGN KEY (iduser) REFERENCES users(id), likes INTEGER, deslikes INTEGER, text_body TEXT)');
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
    List<Map> comentarios= await database.rawQuery('SELECT * FROM comentarios');
    await database.close();
    return comentarios;
  }

  Future<List<Map>> search(String value) async {
    var database = await getDatabase();
    List<Map> coment=
        await database.rawQuery("SELECT * FROM comentarios WHERE id");
    await database.close();
    return coment;
  }

  Future<void> update(Comentarios coment) async {
    var database = await getDatabase();
    await database.update('comentarios', coment.toMap(),
        where: 'id = ?', whereArgs: [coment.id]);
    await database.close();
  }

  Future<void> delete(Comentarios coment) async {
    var database = await getDatabase();
    await database.delete('comentarios', where: 'id = ?', whereArgs: [coment.id]);
    await database.close();
  } 
}
