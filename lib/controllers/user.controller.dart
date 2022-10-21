// import 'package:sqflite/sqflite.dart';
// import '../models/user.model.dart';

// class TaskController {
//   Future<Database> getDatabase() async {
//     var path = await getDatabasesPath();
//     path += 'uservice.db';

//     Database database = await openDatabase(path, version: 1,
//         onCreate: (Database db, int version) async {
//       await db.execute(
//           'CREATE TABLE users (id INTEGER PRIMARY KEY autoincrement, username TEXT, password BINARY)');
//     });

//     return database;
//   }

//   Future<void> create(User user) async {
//     var database = await getDatabase();
//     await database.insert('User', user.toMap());
//     await database.close();
//   }

//   Future<List<Map>> read() async {
//     var database = await getDatabase();
//     List<Map> users = await database.rawQuery('SELECT * FROM users');
//     await database.close();
//     return users;
//   }

//   Future<List<Map>> search(String value) async {
//     var database = await getDatabase();
//     List<Map> users = await database
//         .rawQuery("SELECT * FROM users WHERE name like '%$value%'");
//     await database.close();
//     return users;
//   }

//   Future<void> update(User user) async {
//     var database = await getDatabase();
//     await database
//         .update('User', user.toMap(), where: 'id = ?', whereArgs: [user.id]);
//     await database.close();
//   }

// /*  Future<void> delete(Task task) async {
//     var database = await getDatabase();
//     await database.delete('Task', where: 'id = ?', whereArgs: [task.id]);
//     await database.close();
//   } */
// }
