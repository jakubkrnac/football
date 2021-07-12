import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:football/home_screen/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Color(0xFF8D8D8D),
          primaryColorLight: Color(0xFFC6C6C6),
          primaryColorDark: Color(0xFF161616),
          accentColor: Color(0xFFFFD302),
          fontFamily: 'Silka'),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
