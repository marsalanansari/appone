import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tailerapp/screens/screenone.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => ScreenOne())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffFE2550),
        body: Center(
          child: Container(
            height: 400,
            width: 400,
            child: Image.asset('assets/Vector.png'),
          ),
        ));
  }
}
