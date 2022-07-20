import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tailerapp/screens/list.dart';
import 'package:tailerapp/wig/card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F8F8),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 2, horizontal: 15),
                      decoration: BoxDecoration(
                          color: Color(0xffF0F0F0),
                          borderRadius: BorderRadius.circular(25)),
                      child: TextField(
                        style:
                            TextStyle(color: Color(0xff909090), fontSize: 15),
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search_outlined,
                              color: Color(0xff909090),
                              size: 25,
                            ),
                            hintText: "Top",
                            hintStyle:
                                TextStyle(color: Colors.black, fontSize: 18),
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                  Container(
                      child: Image.asset(
                    'assets/pr1.png',
                    height: 35,
                    width: 35,
                    fit: BoxFit.fill,
                  ))
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        '5182 Items found for “Top”',
                        style: TextStyle(color: Colors.black),
                      )),
                  Container(
                      height: 500,
                      child: GridView(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                        children: <Widget>[
                          card('assets/card1.png', '25.99',
                              'White strap plunge top', 'Sandy Williams'),
                          card('assets/card2.png', '25.99',
                              'Grey winter cardigan', 'Alero Samuel'),
                          card('assets/card3.png', '25.99',
                              'Grey winter cardigan', 'Alero Samuel'),
                          card('assets/card4.png', '25.99',
                              'Grey winter cardigan', 'Alero Samuel'),
                          card('assets/card1.png', '25.99',
                              'White strap plunge top', 'Sandy Williams'),
                          card('assets/card2.png', '25.99',
                              'Grey winter cardigan', 'Alero Samuel'),
                        ],
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              child: Text('login'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ListItem()));
              },
              style: ElevatedButton.styleFrom(
                  primary: Color(0xffFE2550),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  textStyle: TextStyle(
                    fontSize: 20,
                  )),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomAppBar(
      //     child: Container(
      //   decoration: BoxDecoration(color: Colors.white),
      // )),
    );
  }
}
