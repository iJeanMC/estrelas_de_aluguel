import 'package:flutter/material.dart';

import '../../controllers/user.controller.dart';
import '../../models/user.model.dart';


class CadastroPage extends StatelessWidget {

  String? username;
  String? password_hash;


  bool aceitoTermos = true;
  final formKey = GlobalKey<FormState>();

   void save(BuildContext context) async {
   // formKey.currentState!.save();
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
        body: Padding(padding: const EdgeInsets.all(15.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
                      
         children: [ 
          TextFormField(decoration: InputDecoration ( labelText: 'Registro de Login'),
            onChanged: (value) { username = value; print(username);},  
              style: TextStyle(fontSize: 20),
              
          ),
          TextFormField( obscureText: true, decoration: InputDecoration ( labelText: 'Nova Senha'),
            onChanged: (value) => password_hash = value, 
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
          Text('Concordo com os termos de uso.')  ], ),

          SizedBox(
            width: MediaQuery.of(context).size.width - 20,
            child: ElevatedButton(
              onHover: (value) => (context), 
              child: Text('Save'),
              onPressed: (() => {Navigator.of(context).pushNamed('/home')}),
              
            ),
          ),    
             SizedBox(
            width: MediaQuery.of(context).size.width - 20,
            child: ElevatedButton(
              onPressed: () => {Navigator.of(context).pushNamed('/worker')}, 
              child: Text('Colaborador!'),
              
            ),
          ), 
        ])));
  }
}
