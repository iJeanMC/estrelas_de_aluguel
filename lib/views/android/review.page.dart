import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../controllers/review.controller.dart';
import '../../models/review.model.dart';

class ReviewPage extends StatelessWidget {
  Widget rating_bar_indicator_default(double rating) {
    return RatingBarIndicator(
        rating: rating,
        direction: Axis.horizontal,
        itemCount: 5,
        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
        itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Colors.amber,
            ));
  }

  Widget comment_widget(String text) {
    Widget comment = Column(
      children: [
        Row(
          children: [Icon(Icons.person), Text("Username")],
        ),
        Container(
          // fazer um for loop que exibe todos os comentários
          margin: EdgeInsets.all(3),
          padding: EdgeInsets.all(3),
          alignment: Alignment.centerLeft,
          child: Text(text),
        ),
      ],
    );
    return comment;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Estrelas de Aluguel"),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                        alignment: Alignment.topCenter,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.amber),
                        child: const Icon(
                          Icons.person,
                          size: 45,
                        ),
                      )),
                      Expanded(
                        flex: 5,
                        child: Column(
                          children: [
                            Padding(padding: EdgeInsets.all(5)),
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.all(1),
                              margin: EdgeInsets.fromLTRB(2, 2, 20, 2),
                              color: Colors.white,
                              child: Text(
                                " nome",
                                style: TextStyle(fontSize: 24),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.all(1),
                              margin: EdgeInsets.fromLTRB(2, 2, 20, 2),
                              color: Colors.white,
                              child: Text(" função"),
                            ),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.all(1),
                                margin: EdgeInsets.fromLTRB(2, 2, 20, 2),
                                color: Colors.white,
                                child: rating_bar_indicator_default(4))
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(16, 5, 16, 3),
                    padding: EdgeInsets.all(8),
                    color: Colors.white70,
                    child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                    child: Text("Review por: Nome Cliente"),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(6),
              color: Colors.white,
              child: Column(children: [
                Container(
                    alignment: Alignment.centerLeft,
                    child: Text("Comentarios: ")),
                Container(
                  height: 200,
                  child: ListView(
                    // you can hand this guy a list of comments via the CRUD comment thing and it should maybe work
                    children: [
                      comment_widget("this is very something something"),
                      comment_widget("this is very something something"),
                      comment_widget(
                          "this is ahhahahah fasdfoewjrofjeoihg fsdofi sdof sdjiofp jsdpfg jsdp"),
                    ],
                  ),
                )
              ]),
            )
          ],
        ));
  }
}
