import 'package:flutter/material.dart';
//import models as needed

class LoginPage extends StatelessWidget {
  var estrela_icon = 'images/S5.png';
  double? icon_size = 200;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //#46b3eb
        backgroundColor: const Color.fromARGB(255, 70, 179, 235),
        body: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(40),
          child: Column(
            children: [
              const Text(
                "Estrelas de Aluguel",
                style: TextStyle(fontSize: 32, color: Colors.white),
              ),
              Image.asset(
                estrela_icon,
                fit: BoxFit.fill,
                width: icon_size,
                height: icon_size,
              ),
              Text("E-mail"),
              TextField(),
              Text("Senha"),
              TextField()
            ],
          ),
        ));
  }
}
