import 'package:app_01/constants.dart';
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
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kPrimaryColor,
      ),
      home: HomePage(),
    );
  }
}
