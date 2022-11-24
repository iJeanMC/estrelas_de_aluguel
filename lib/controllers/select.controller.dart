import 'package:sqflite/sqflite.dart';
import '../models/user.model.dart';
import '../models/worker.model.dart';
import '../models/review.model.dart';
import '../models/comentarios.model.dart';

class SelectController {
  Future<List<Map>> get resultT => resultT;
  Future<List<Map>> get resultR => resultR;


  Future<Database> getDatabase() async {
    var path = await getDatabasesPath();
    path += 'uservice.db';

    Database database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {  });

    return database;
  }


 Future<List<Map>> searchT(String value) async {
    var database = await getDatabase();
    List<Map> users,worker = await database
        .rawQuery("SELECT username, userid FROM users LEFT [OUTER] JOIN workers on users.id = worker.userid where username like '%$value%'");
    await database.close();
    return resultT;
  }

  Future<List<Map>> searchR(String value) async {
    var database = await getDatabase();
    List<Map> users,worker, review= await database
        .rawQuery("SELECT username, userid, funcao, stars FROM users LEFT [OUTER] JOIN workers on users.id = worker.userid, LEFT [OUTER] JOIN review on users.id = review.autor_id where username like '%$value%'");
    await database.close();
    return resultR;
  }





}