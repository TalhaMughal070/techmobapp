import 'package:flutter/material.dart';
import 'package:techmobapp/resources/compnents/round_button.dart';

class Intro2 extends StatelessWidget {
  const Intro2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .2001,
          ),
          Image.asset('assets/find.png'),
          const Text(
            'Find a course\n      for you',
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
          //   onpress: () {},
          // )
        ],
      ),
    );
  }
}
