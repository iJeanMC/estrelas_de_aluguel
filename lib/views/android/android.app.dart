import 'package:flutter/material.dart';

import 'home.page.dart';
import 'login.page.dart';
import 'search.page.dart';
import 'review.page.dart';
import 'review_creation.page.dart';

class AndroidApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage(), routes: {
      '/home': (context) => HomePage(),
      '/login': (context) => LoginPage(),
      '/search': (context) => SearchPage(),
      '/review': (context) => ReviewPage(),
      '/review_creation': (context) => ReviewCreation(),
    });
  }
}
