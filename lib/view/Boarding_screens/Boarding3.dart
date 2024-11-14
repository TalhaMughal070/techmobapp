import 'package:flutter/material.dart';
import 'package:techmobapp/resources/compnents/round_button.dart';
import 'package:techmobapp/view/auth/login_screen.dart';

class Intro3 extends StatelessWidget {
  const Intro3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .1451,
          ),
          Image.asset('assets/improve.png'),
          const Text(
            'Improve your skills',
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
        ],
      ),
    );
  }
}
