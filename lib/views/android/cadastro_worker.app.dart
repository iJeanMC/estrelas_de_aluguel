import 'package:flutter/material.dart';

import '../../controllers/worker.controller.dart';
import '../../models/worker.model.dart';

class Cadastro_workerPage extends StatelessWidget {
  String? password_hash;
  int? userid;
  String? funcao;

    bool aceitoTermos = true;
  final formKey = GlobalKey<FormState>();

  void save(BuildContext context) async {
 //   formKey.currentState!.save();
    var workerController = new WorkerController();
    await workerController.create(Worker(password_hash, userid, funcao));
    Navigator.of(context).pop();
  }

  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tela Cadastro Colaborador"),
        ),
        body: Padding(padding: const EdgeInsets.all(15.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
                      
         children: [ 
          TextFormField( decoration: InputDecoration ( labelText: 'Confirmar usuario'),
            onChanged: (value) => userid = int.parse(value), 
              style: TextStyle(fontSize: 18)
              
          ),
          TextFormField( decoration: InputDecoration ( labelText: 'Função'),
            onChanged: (value) { funcao = value;},   
              style: TextStyle(fontSize: 18)
              
          ),
            TextFormField(obscureText: true, decoration: InputDecoration ( labelText: 'Confirmar Senha'),
            style: TextStyle(fontSize: 18)
          ),
          
          
           
          Row(
             children: [
              Checkbox(
                value: aceitoTermos , 
                onChanged: (aceitoTermos) {},), 
          Text('Concordo com os termos de uso(2).')  ], ),

          SizedBox(
            width: MediaQuery.of(context).size.width - 20,
            child: ElevatedButton(
              onPressed: () => save(context), 
              child: Text('Save'),
              
            ),
          ),    

        ])));
  }
}
