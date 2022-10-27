import 'package:flutter/material.dart';
//import models as needed

class HomePage extends StatelessWidget {
  String userIcon = 'images/S1.png';

  var a_review_list = List<int>.filled(9, 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: (() => {Navigator.of(context).pushNamed('/login')}),
                icon: Image.asset(userIcon))
          ],
        ),
        // i don't think i'm going to do this right. the idea is to make
        // multiple "cards" and each card is a review that is Hot rn
        // like, what determines the Hotness of a review??
        // and the cards also inlude a gilmpse of the review's comments
        // clicking anywhere in the card should take you to the review page
        // how many reviews can be Hot? Where do I get them?
        // probably the controller, make a "hot reviews" method
        // how many hot cards? infinite? I think 4 will be enough
        // then you can scroll throught the collumn and look at them

        // +--------------------------------------+
        // | +----------------------+-----------+ |
        // | |     Text             |search icon| |
        // | +----------------------+-----------+ |
        // +--------------------------------------+

        body: Column(
          children: [
            // title card and search icon
            Container(
              color: Colors.black26,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "  Reviews em Destaque",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                  Container(
                      decoration: const BoxDecoration(
                          border:
                              Border(left: BorderSide(color: Colors.white))),
                      child: IconButton(
                          onPressed: () => {},
                          icon: const Icon(
                            Icons.search,
                            size: 35,
                            color: Colors.white,
                          ))),
                ],
              ),
            ),
            //review cards
            Expanded(
              flex: 7,
              child: SingleChildScrollView(
                  child: Column(
                children: [
                  for (var value
                      in a_review_list) // this gonna get a List of Hot Reviews and then we need to unpack those
                    Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                  child: Container(
                                alignment: Alignment.topCenter,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.amber),
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
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(5),
                                  padding: EdgeInsets.all(8),
                                  child: Text(
                                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                                    textAlign: TextAlign.left,
                                  ),
                                  decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide())),
                                ),
                                Text("Review por: Nome Cliente"),
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
                                          margin: EdgeInsets.all(3),
                                          padding: EdgeInsets.all(3),
                                          color: Colors.grey,
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                              "this is very informational, thank you"),
                                        ),
                                        Container(
                                          margin: EdgeInsets.all(3),
                                          padding: EdgeInsets.all(3),
                                          alignment: Alignment.centerLeft,
                                          color: Colors.grey,
                                          child: Text(
                                              "I had a very different experience, disagree h,phm"),
                                        ),
                                        Container(
                                            alignment: Alignment.center,
                                            color: Colors.lightGreen,
                                            child: Text(
                                                "Ver mais comentários")) //transformar isso num botão que leva pra página da review
                                        //                                     talvez fazer o card inteiro ser um botão?
                                      ],
                                    )
                                  ]),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                ],
              )),
            )
          ],
        ));
  }
}
