import 'package:app_01/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        primaryColor: Color(0xffe9e8e9),
        scaffoldBackgroundColor: Color(0xffe9e8e9),
      ),
      home: HomePage(),
    );
  }
}
