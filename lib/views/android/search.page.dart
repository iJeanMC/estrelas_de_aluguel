import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
//import models as needed

class SearchPage extends StatelessWidget {
  Widget rating_bar_indicator_default(double rating) {
    return RatingBarIndicator(
        rating: rating,
        direction: Axis.horizontal,
        itemCount: 5,
        itemSize: 30,
        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
        itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Colors.amber,
            ));
  }

  @override
  Widget worker_preview_card(BuildContext context) {
    return GestureDetector(
      onTap: () => {Navigator.of(context).pushNamed('/review')},
      child: Container( 
        width: 300,
        decoration: BoxDecoration(
            color: Colors.lightBlue,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(3),
        child: Row( 
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container( 
              padding: EdgeInsets.all(3),
              child: Expanded(
                  child: Container(
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.amber),
                child: Center(
                  child: const Icon(
                    Icons.person,
                    size: 45,
                  ),
                ), 
              ) ), 
            ),
            Expanded(
              flex: 5,
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(5)),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(1),
                    margin: EdgeInsets.fromLTRB(2, 2, 10, 2),
                    color: Colors.white,
                    child: Text(
                      " nome",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(1),
                    margin: EdgeInsets.fromLTRB(2, 2, 10, 2),
                    color: Colors.white,
                    child: Text(
                      " função",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(1),
                      margin: EdgeInsets.fromLTRB(2, 2, 10, 2),
                      color: Colors.white,
                      child: rating_bar_indicator_default(4))
                ],
              ), 
            ) 
          ], 
        ), 
      ),
    );
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text("Estrelas de Aluguel"),
        ),
        body: Column(
          children: [
            Container(
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search), hintText: "Persquisar..."),
              ),
            ),
            Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.black))),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      worker_preview_card(context),
                      worker_preview_card(context)
                    ],
                  ),
                )),
            Expanded(flex: 7, child: Container())
          ],
        ));
  }
}
