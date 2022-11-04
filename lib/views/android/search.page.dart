import 'package:flutter/material.dart';
//import models as needed

class SearchPage extends StatelessWidget {
  Widget worker_preview_card(BuildContext context) {
    return GestureDetector(
      onTap: () => {Navigator.of(context).pushNamed('/review')},
      child: Container(
        width: 300,
        decoration: BoxDecoration(
            color: Colors.lightBlue,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(5),
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
              )),
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
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(1),
                    margin: EdgeInsets.fromLTRB(2, 2, 10, 2),
                    color: Colors.white,
                    child: Text(" função"),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(1),
                    margin: EdgeInsets.fromLTRB(2, 2, 10, 2),
                    color: Colors.white,
                    child:
                        const Text("Widget das estrelas", style: TextStyle()),
                  )
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
            Expanded(flex: 4, child: Container())
          ],
        ));
  }
}
