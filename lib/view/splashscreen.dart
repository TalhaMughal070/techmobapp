import 'dart:async';

import 'package:flutter/material.dart';
import 'package:techmobapp/view/homescreen.dart';
import 'package:techmobapp/view/Boarding_screens/BoardingAll.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => const Intro_screen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/spl.png'),
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Code Factory',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 31),
          )
        ],
      )),
    );
  }
}
