import 'package:flutter/material.dart';
//import models as needed

class ReviewPage extends StatelessWidget {
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
                              child: const Text("Widget das estrelas",
                                  style: TextStyle()),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    padding: EdgeInsets.all(8),
                    color: Colors.white70,
                    child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Text("Review por: Nome Cliente"),
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
                Column(
                  children: [
                    Container(
                      // fazer um for loop que exibe todos os comentários
                      margin: EdgeInsets.all(3),
                      padding: EdgeInsets.all(3),
                      color: Colors.grey,
                      alignment: Alignment.centerLeft,
                      child: Text("this is very informational, thank you"),
                    ),
                    Container(
                      margin: EdgeInsets.all(3),
                      padding: EdgeInsets.all(3),
                      alignment: Alignment.centerLeft,
                      color: Colors.grey,
                      child: Text(
                          "I had a very different experience, disagree h,phm"),
                    )
                  ],
                )
              ]),
            )
          ],
        ));
  }
}
