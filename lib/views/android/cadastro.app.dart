import 'package:flutter/material.dart';

import '../../controllers/user.controller.dart';
import '../../models/user.model.dart';

class CadastroPage extends StatelessWidget {
  String? username;
  String? password_hash;
  final formKey = GlobalKey<FormState>();

  void save(BuildContext context) async {
    formKey.currentState!.save();
    var userController = new UserController();
    await userController.create(User(username, password_hash));
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tela Cadastro"),
        ),
        body: Column(children: [
          TextFormField(
            onSaved: (value) => username = value,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width - 20,
            child: ElevatedButton(
              onPressed: () => save(context),
              child: Text('Save'),
            ),
          ),
          TextFormField(
            onSaved: (value) => password_hash = value,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width - 20,
            child: ElevatedButton(
              onPressed: () => save(context),
              child: Text('Save'),
            ),
          ),
        ]));
  }
}
