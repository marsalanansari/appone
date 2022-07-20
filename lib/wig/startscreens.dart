import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tailerapp/screens/login.dart';
import 'package:tailerapp/screens/splash.dart';

class StartScreens extends StatelessWidget {
  final String backimg;
  final String tx1;
  final String tx2;
  const StartScreens(
      {required this.backimg, required this.tx1, required this.tx2});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(backimg), fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.only(top: 30),
            height: 80,
            width: 80,
            child: Image.asset(
              'assets/Vector.png',
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'No',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      tx1,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Text('Featured',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 24,
                        fontWeight: FontWeight.bold)),
                Text('Tailored ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 52,
                        fontWeight: FontWeight.bold)),
                Text(tx2, style: TextStyle(color: Colors.white, fontSize: 20)),
                SizedBox(
                  height: 15,
                ),
                Container(
                    padding:
                        EdgeInsets.only(top: 8, bottom: 8, left: 80, right: 80),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2),
                        borderRadius: BorderRadius.circular(2)),
                    child: GestureDetector(
                      onTap: null,
                      child: Text(
                        'Shop Now',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                SizedBox(
                  height: 50,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class LastScreen extends StatelessWidget {
  const LastScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/sn11.png'), fit: BoxFit.cover)),
        child: Column(
          children: [
            Stack(
              children: [
                Align(
                    alignment: Alignment.topRight,
                    child: Image(image: AssetImage('assets/sn12.png'))),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Container(
                padding:
                    EdgeInsets.only(top: 8, bottom: 8, left: 80, right: 80),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(2)),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Text(
                    'Continue',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            Text(
              'By clicking this button you agree to our \n terms of service and privacy policy',
              style: TextStyle(fontSize: 14, color: Colors.white),
            )
          ],
        ));
  }
}
