import 'package:flutter/material.dart';

import '../../controllers/worker.controller.dart';
import '../../models/worker.model.dart';

class Cadastro_workerPage extends StatelessWidget {
  String? password_hash;
  final formKey = GlobalKey<FormState>();

  void save(BuildContext context) async {
    formKey.currentState!.save();
    var workerController = new WorkerController();
    await workerController.create(Worker(password_hash));
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



  //       Form(
  //       key: formKey,
  //       child: Column(
  //         children: [
  //           TextFormField(
  //             onSaved: (value) => username = value,
  //           ),
  //           SizedBox(
  //             width: MediaQuery.of(context).size.width - 20,
  //             child: ElevatedButton(
  //               onPressed: () => save(context), 
  //               child: Text('Save'),
  //             ),
  //           ),
  //         ],
  //     ]),
  //     ),
  // }