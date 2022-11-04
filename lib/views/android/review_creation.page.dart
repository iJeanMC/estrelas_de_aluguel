import 'package:flutter/material.dart';
//import models as needed

class ReviewCreation extends StatelessWidget {
  String userIcon = 'images/S1.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        body: Center());
  }
}
