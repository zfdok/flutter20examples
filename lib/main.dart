import 'package:flutter/material.dart';
import 'package:flutterapp/my_bottom_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "app01",
      theme: ThemeData(
        primarySwatch: Colors.indigo
      ),
      home: MybottomAppbar(),
    );
  }
}