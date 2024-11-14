import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:techmobapp/resources/compnents/round_button.dart';
import 'package:techmobapp/view/auth/login_screen.dart';

import 'package:techmobapp/view/intro_screens/intro1.dart';
import 'package:techmobapp/view/intro_screens/intro2.dart';
import 'package:techmobapp/view/intro_screens/intro3.dart';

class Intro_screen extends StatefulWidget {
  const Intro_screen({super.key});

  @override
  State<Intro_screen> createState() => _Intro_screenState();
}

class _Intro_screenState extends State<Intro_screen> {
  final PageController controller = PageController();
  bool lastpage = false;
  bool secondpage = false;
  bool firstpage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          Center(
            child: PageView(
              onPageChanged: (index) {
                setState(() {
                  lastpage = index == 2;
                  secondpage = index == 1;
                  firstpage = index == 0;
                });
              },
              controller: controller,
              children: const [
                Intro1(),
                Intro2(),
                Intro3(),
              ],
            ),
          ),
          Positioned(
              left: 270,
              top: 30,
              child: Container(
                  height: 35,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(115)),
                  child: Center(
                    child: TextButton(
                        onPressed: () {
                          controller.jumpToPage(2);
                        },
                        child: const Text('skip')),
                  ))),
          Container(
              alignment: Alignment(0, 0.8),
              child: roundbutton(
                  title: lastpage ? "Let's Started" : 'Next',
                  onpress: () {
                    lastpage
                        ? Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()))
                        : controller.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeInOut);
                  })),
          Container(
            alignment: const Alignment(0, .55),
            child: SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect: const WormEffect(
                    activeDotColor: Colors.blue,
                    strokeWidth: 3,
                    dotHeight: 10,
                    dotWidth: 10),
                onDotClicked: (index) {
                  controller.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                }),
          ),
        ],
      ),
    ));
  }
}
