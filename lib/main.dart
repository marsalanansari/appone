import 'package:flutter/material.dart';
import 'package:tailerapp/screens/home.dart';
import 'package:tailerapp/screens/list.dart';
import 'package:tailerapp/screens/login.dart';
import 'package:tailerapp/screens/splash.dart';
import 'package:tailerapp/wig/startscreens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
