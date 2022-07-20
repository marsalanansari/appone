import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tailerapp/wig/startscreens.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          StartScreens(
              backimg: 'assets/sn1.png',
              tx1: '1',
              tx2:
                  'Jennifer Kingsley exploring the \n new range of winter fashion wear'),
          StartScreens(
              backimg: 'assets/sn2.png',
              tx1: '2',
              tx2: 'Jimmy Chuka exploring new spring \n sweater collection'),
          StartScreens(
              backimg: 'assets/sn3.png',
              tx1: '3',
              tx2: 'Christain Lobi showing us his new \n summer beach wears'),
          LastScreen()
        ],
      ),
    );
  }
}
