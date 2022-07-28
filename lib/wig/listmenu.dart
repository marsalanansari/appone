import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget listCard(var listimage, var textone, var texttwo) {
  return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            listimage,
            width: 80,
            height: 80,
          ),
          Text(
            textone,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          Text(
            texttwo,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Color(0xffFE2550)),
          ),
        ],
      ));
}
