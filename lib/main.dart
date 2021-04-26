import 'package:flutter/material.dart';
import 'package:interior_design_clone/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white, 
        fontFamily: "Arial", 
        accentColor: Color(0xFFE2CA90),
        backgroundColor: Color(0xFFF5F5F5),
      ),
      title: 'Interior',
      home: HomeScreen(),
    );
  }
}

