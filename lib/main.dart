import 'package:demo1/BottomNavigationWidget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter BottomNavigationBar",
      theme: ThemeData.light(),
      home: BottomNavigationWidget(),
    );
  }
}

