import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListItem extends StatelessWidget {
  const ListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                    padding: EdgeInsets.symmetric(vertical: 2, horizontal: 15),
                    decoration: BoxDecoration(
                        color: Color(0xffF0F0F0),
                        borderRadius: BorderRadius.circular(25)),
                    child: TextField(
                      style: TextStyle(color: Color(0xff909090), fontSize: 15),
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
          Expanded(
            child: ListView(
              children: [
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(color: Colors.amber),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'assets/list1.png',
                          width: 50,
                          height: 50,
                        ),
                        Text('this is text one'),
                        Text('this is text two'),
                      ],
                    )),
                    SizedBox(height: 10,),
                    Container(
                    margin: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(color: Colors.amber),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'assets/list1.png',
                          width: 50,
                          height: 50,
                        ),
                        Text('this is text one'),
                        Text('this is text two'),
                      ],
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
