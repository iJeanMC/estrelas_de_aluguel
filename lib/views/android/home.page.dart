import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


//import models as needed



class HomePage extends StatelessWidget {
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

  String userIcon = 'images/S1.png';

  var a_review_list = List<int>.filled(9, 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () =>
                Navigator.of(context).pushNamed('/review_creation')),
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
                          onPressed: () => {
                                Navigator.of(context).pushNamed('/search')
                              }, //redirect to search page
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
                    GestureDetector(
                      onTap: () => {
                        Navigator.of(context).pushNamed('/review')
                      }, //redirect to review page
                      child: Container(
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
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
                                        margin:
                                            EdgeInsets.fromLTRB(2, 2, 20, 2),
                                        color: Colors.white,
                                        child: Text(
                                          " nome",
                                          style: TextStyle(fontSize: 24),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.all(1),
                                        margin:
                                            EdgeInsets.fromLTRB(2, 2, 20, 2),
                                        color: Colors.white,
                                        child: Text(" função"),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        padding: EdgeInsets.all(1),
                                        margin:
                                            EdgeInsets.fromLTRB(2, 2, 20, 2),
                                        color: Colors.white,
                                        child: rating_bar_indicator_default(4),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(3),
                                    padding: EdgeInsets.all(3),
                                    child: Text(
                                      "Titulo da Review",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontFamily: 'Nunito',
                                          fontWeight: FontWeight.bold),
                                    ),
                                    decoration: BoxDecoration(
                                        border: Border(bottom: BorderSide())),
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(3),
                                    padding: EdgeInsets.all(3),
                                    child: Text("Review por: Nome Cliente"),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                ],
              )),
            )
          ],
        ));
  }
}
