import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import models as needed

import 'package:estrelas_de_aluguel/models/review.model.dart';
import 'package:estrelas_de_aluguel/controllers/review.controller.dart';

class ReviewCreation extends StatelessWidget {
  String userIcon = 'images/S1.png';

  TextEditingController title = TextEditingController();
  TextEditingController worker = TextEditingController();
  TextEditingController main_text = TextEditingController();
  double rating = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: (() => {Navigator.of(context).pushNamed('/login')}),
              icon: Image.asset(
                userIcon,
              ),
            )
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: title,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Título"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                  controller: worker,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: "Trabalhador")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                keyboardType: TextInputType.multiline,
                minLines: 15,
                maxLines: 40,
                controller: main_text,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Review",
                    alignLabelWithHint: true),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () => {Navigator.of(context).pop()},
                child: Container(
                  child: Text("Enviar"),
                ),
              ),
            )
          ],
        ));
  }
}
