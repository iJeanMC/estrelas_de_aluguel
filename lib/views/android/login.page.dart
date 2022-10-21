import 'package:flutter/material.dart';
//import models as needed

class LoginPage extends StatelessWidget {
  var estrela_icon = 'image/icon.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //#46b3eb
        backgroundColor: Color.fromARGB(255, 70, 179, 235),
        body: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(5),
          child: Column(
            children: [
              Text(
                "Estrelas de Aluguel",
                style: TextStyle(fontSize: 50),
              ),
              Image.asset(estrela_icon),
              Text("E-mail"),
              TextField(),
              Text("Senha"),
              TextField()
            ],
          ),
        ));
  }
}
