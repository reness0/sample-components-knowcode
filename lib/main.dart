import 'package:flutter/material.dart';
import 'package:sample_components_knowcode/home-page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'KnowCode sample componenets',
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        home: HomePage());
  }
}
