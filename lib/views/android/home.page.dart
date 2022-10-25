import 'package:flutter/material.dart';
//import models as needed

class HomePage extends StatelessWidget {
  String userIcon = 'images/S1.png';

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
            Expanded(
              flex: 7,
              child: Container(),
            )
          ],
        ));
  }
}
