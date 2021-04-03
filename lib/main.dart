import 'package:covidapp/welcomescreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    theme: ThemeData(primaryColor: Color(0xfff4f4fa)),
    home: WelcomeScreen(),
  );
  
  }
}

