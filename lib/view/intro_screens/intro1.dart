import 'package:flutter/material.dart';
import 'package:techmobapp/resources/compnents/round_button.dart';
import 'package:techmobapp/view/intro_screens/intro2.dart';
import 'package:techmobapp/view/intro_screens/introAll.dart';

class Intro1 extends StatelessWidget {
  const Intro1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .15,
          ),
          Image.asset('assets/learn.png'),
          const Text(
            'Learn anytime\nand anywhere',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 25,
            ),
          ),
          const Text(
            'Quarantine is the perfect time to spend your\nday learning something new from anywhere',
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          // roundbutton(
          //   onpress: () {

          //   },
          // )
        ],
      ),
    );
  }
}
