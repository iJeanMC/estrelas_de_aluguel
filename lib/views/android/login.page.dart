import 'package:flutter/material.dart';
//import models as needed

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String estrelaIcon = 'images/S5.png';

  double? iconSize = 150;

  InputDecoration loginDeco = const InputDecoration(
      border: OutlineInputBorder(), fillColor: Colors.white, filled: true);

  TextStyle loginStyle = const TextStyle(
      color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //#46b3eb
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color.fromARGB(255, 70, 179, 235),
        body: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(40),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(),
              ),
              const Expanded(
                flex: 1,
                child: Text(
                  "Estrelas de Aluguel",
                  style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                flex: 3,
                child: Image.asset(
                  estrelaIcon,
                  width: iconSize,
                  height: iconSize,
                ),
              ),
              Expanded(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "E-mail",
                            style: loginStyle,
                          ),
                          const Padding(padding: EdgeInsets.all(4)),
                          TextField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: loginDeco,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Senha",
                            style: loginStyle,
                          ),
                          const Padding(padding: EdgeInsets.all(4)),
                          TextField(
                            obscureText: true,
                            decoration: loginDeco,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(flex: 1, child: Container()),
              Expanded(
                  child: ElevatedButton(
                child: Text('Login'),
                onPressed: () => {
                  Navigator.of(context).pop()
                }, //do more stuff? i don't know, like make the user actually be logged in, I guess
              )),
ElevatedButton(
                child: Text('Registrar'),
                onPressed: () => {
                  Navigator.of(context).pushNamed('/cadastro') }
)
              //Expanded(flex: 1, child: Container())
            ], 
          ),
        ));
  }
}
