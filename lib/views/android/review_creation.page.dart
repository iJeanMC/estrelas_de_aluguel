import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import models as needed

import '../../controllers/review.controller.dart';
import '../../controllers/select.controller.dart';
import '../../models/review.model.dart';

  String userIcon = 'images/S1.png';
  double? stars;
  String? text_body;
  String? title;

final formKey = GlobalKey<FormState>();


class ReviewCreation extends StatefulWidget {
   @override
  State<ReviewCreation> createState() => _SearchWorkerState();
}

class _SearchWorkerState extends State<ReviewCreation> {

  final select = new SelectController();
  @override

  Future<List<Map>>? resultR;

   void searchSelect(String value){
      setState(() {
      resultR = select.searchR(value);
    });
  }  
  
  void save(BuildContext context) async {
  //  formKey.currentState!.save();
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
                 onChanged: (value) => searchSelect(value),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: "Trabalhador")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                keyboardType: TextInputType.multiline,
                minLines: 15,
                maxLines: 40,
                onChanged: (value) => text_body = value,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Review",
                    alignLabelWithHint: true),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: ElevatedButton(
                onHover: (value) => (context),
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
