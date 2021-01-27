import 'package:flutter/material.dart';
import 'package:flutter_app_some_news/views_/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.white,
      ),
      home: Home(),
    );
  }
}
