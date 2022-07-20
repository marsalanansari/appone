import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

Widget card(var pic, var tx1, var tx2, var tx3) {
  return Container(
    margin: EdgeInsets.all(5),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(left: 20),
          child: Image.asset(
            pic,
            height: 100,
            width: 110,
            fit: BoxFit.fill,
          ),
        ),
        Text(
          tx1,
          style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
        ),
        Text(tx2),
        Text(
          tx3,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        )
      ],
    ),
  );
}
