import 'package:flutter/material.dart';
import 'package:flutterworkshop/Pages/AnimationPage.dart';
import 'package:flutterworkshop/Pages/Home.dart';
import 'package:flutterworkshop/Pages/SettingPage.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Workshop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimationPage(),  
    );
  }
}