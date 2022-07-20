import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tailerapp/screens/home.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 150,
          child: Center(child: Image.asset('assets/Vector2.png')),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          margin: EdgeInsets.symmetric(horizontal: 10),
          height: 400,
          decoration: BoxDecoration(
              border: Border.all(color: Color(0xffF0F0F0), width: 6),
              borderRadius: BorderRadius.circular(15)),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 2, horizontal: 15),
                decoration: BoxDecoration(
                    color: Color(0xffF0F0F0),
                    borderRadius: BorderRadius.circular(25)),
                child: TextField(
                  style: TextStyle(color: Color(0xff909090), fontSize: 15),
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.person,
                        color: Color(0xff909090),
                        size: 25,
                      ),
                      hintText: "your email",
                      hintStyle:
                          TextStyle(color: Color(0xff909090), fontSize: 18),
                      border: InputBorder.none),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                decoration: BoxDecoration(
                    color: Color(0xffF0F0F0),
                    borderRadius: BorderRadius.circular(25)),
                child: TextField(
                  style: TextStyle(color: Color(0xff909090), fontSize: 15),
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        color: Color(0xff909090),
                        size: 25,
                      ),
                      hintText: "your password",
                      hintStyle:
                          TextStyle(color: Color(0xff909090), fontSize: 18),
                      border: InputBorder.none),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                child: Text('login'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                style: ElevatedButton.styleFrom(
                    primary: Color(0xffFE2550),
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    textStyle: TextStyle(
                      fontSize: 20,
                    )),
              ),
              SizedBox(
                height: 25,
              ),
              ElevatedButton(
                child: Text('create account'),
                onPressed: () {
                  {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  }
                },
                style: ElevatedButton.styleFrom(
                    primary: Color(0xffFE2550),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    textStyle: TextStyle(
                      fontSize: 15,
                    )),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
