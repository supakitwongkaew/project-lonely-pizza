import 'package:flutter/material.dart';
import 'package:pizza_pj/screens/home.dart';
import 'package:pizza_pj/screens/order.dart';
import 'package:pizza_pj/screens/review.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Navigtion',
      routes: <String, WidgetBuilder> {
        '/Home': (BuildContext context) => new Home(),
        '/Order': (BuildContext context) => new Order(),
        '/Review': (BuildContext context) => new Review(),
      },
      home: new Home(),
    );
  }
}