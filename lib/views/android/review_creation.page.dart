import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import models as needed

import '../../controllers/review.controller.dart';
import '../../models/review.model.dart';

class ReviewCreation extends StatelessWidget {
  String userIcon = 'images/S1.png';
  double? stars;
  String? text_body;
  String? title;
  final formKey = GlobalKey<FormState>();

  void save(BuildContext context) async {
    formKey.currentState!.save();
    var reviewController = new ReviewController();
    await reviewController.create(Review(stars, text_body, title ));
    Navigator.of(context).pop();
  }

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
              child: TextFormField(
                onSaved: (value) => title = value,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Título"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextFormField(
                  //  onSaved: (value) => worker_reviewd = value,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: "Trabalhador")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                keyboardType: TextInputType.multiline,
                minLines: 15,
                maxLines: 40,
                onSaved: (value) => text_body = value,
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
