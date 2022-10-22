import 'package:flutter/material.dart';

import 'home.page.dart';
import 'login.page.dart';
import 'search.page.dart';
import 'review.page.dart';

class AndroidApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LoginPage(), routes: {
      '/home': (context) => HomePage(),
      '/login': (context) => LoginPage(),
      '/search': (context) => SearchPage(),
      '/review': (context) => ReviewPage(),
    });
  }
}
