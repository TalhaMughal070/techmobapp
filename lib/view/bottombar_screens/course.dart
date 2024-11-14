import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:techmobapp/view/courses_screens/html.dart';
import 'package:techmobapp/view/courses_screens/Csharp.dart';
import 'package:techmobapp/view/courses_screens/c++.dart';
import 'package:techmobapp/view/courses_screens/css.dart';
import 'package:techmobapp/view/courses_screens/java.dart';

import 'package:techmobapp/view/courses_screens/javascript.dart';
import 'package:techmobapp/view/courses_screens/php.dart';
import 'package:techmobapp/view/courses_screens/python.dart';
import 'package:techmobapp/view/courses_screens/swift.dart';
import 'package:techmobapp/view/courses_screens/ui.dart';

class Course extends StatefulWidget {
  const Course({super.key});

  @override
  State<Course> createState() => _CourseState();
}

class _CourseState extends State<Course> {
  List photos = [
    'assets/ui2.png',
    'assets/web.png',
    'assets/css.png',
    'assets/js.png',
    'assets/python.png',
    'assets/c-.png',
    'assets/c-sharp.png',
    'assets/swift.png',
    'assets/java.png',
    'assets/php.png',
  ];

  List title = [
    'UI',
    'HTML',
    'CSS',
    'JAVASCRIPT',
    'PYTHON',
    'C++',
    'C-SHARP',
    'SWIFT',
    'JAVA',
    'PHP'
  ];

  List substitle = [
    'Advanced interface design',
    'Advanced concepts of html',
    'Advanced concepts of css',
    'Advanced concepts of javascript',
    'Advanced concepts of python',
    'Advanced concepts of C++',
    'Advanced concepts of C-sharp',
    'Advanced concepts of swift',
    'Advanced concepts of java',
    'Advanced concepts of php',
  ];
  List price = [
    '50',
    '55',
    '45',
    '30',
    '35',
    '20',
    '25',
    '43',
    '35',
    '18',
  ];
  List screens = [
    const Ui(),
    const Html(),
    const Css(),
    const Javascript(),
    const Python(),
    const Cplus(),
    const Csharp(),
    const swift(),
    const Java(),
    const php()
  ];
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        SystemNavigator.pop();
        return false;
      },
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Row(
                children: [
                  Text(
                    'Hello',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              Row(
                children: [
                  const Text(
                    'Juana Antionoata',
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Container(
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(50)),
                    child: const Icon(
                      CupertinoIcons.bell,
                      size: 20,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Search Course',
                  suffixIcon: const Icon(CupertinoIcons.search),
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(12)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 2),
                      borderRadius: BorderRadius.circular(12)),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: title.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => screens[index]));
                        },
                        child: Card(
                          elevation: 4,
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Image.asset(
                                photos[index],
                                height: 200,
                                width: 200,
                              ),
                              Container(
                                height: 0.1,
                                color: Colors.black,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, left: 20, right: 20, bottom: 15),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        const Text(
                                          '3h',
                                          style: const TextStyle(
                                              color: Colors.green,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        const Text(
                                          '30min',
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        const SizedBox(
                                          width: 120,
                                        ),
                                        Container(
                                          height: 37,
                                          width: 90,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              color:
                                                  Colors.blue.withOpacity(0.6)),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                price[index],
                                                style: const TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              const Text(
                                                '\$',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Align(
                                      alignment: const Alignment(-0.99, 0),
                                      child: Text(
                                        title[index],
                                        style: const TextStyle(
                                            fontSize: 27,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Align(
                                      alignment: const Alignment(-.6, 0),
                                      child: Text(
                                        substitle[index],
                                        style: const TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
