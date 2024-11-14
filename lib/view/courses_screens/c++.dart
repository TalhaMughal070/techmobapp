import 'package:flutter/material.dart';
import 'package:techmobapp/resources/compnents/round_button.dart';

class Cplus extends StatefulWidget {
  const Cplus({super.key});

  @override
  State<Cplus> createState() => _CplusState();
}

class _CplusState extends State<Cplus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'C++',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        leading: Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 36,
                width: 36,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(50)),
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  size: 16,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Image.asset(
              'assets/c-.png',
              height: 250,
              width: 250,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Align(
            alignment: const Alignment(0.85, 0),
            child: Container(
              height: 37,
              width: 90,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.blue.withOpacity(0.6)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '50',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '\$',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            children: [
              const SizedBox(
                width: 30,
              ),
              Text(
                'About the course',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const Row(
            children: [
              SizedBox(
                width: 30,
              ),
              Text("You can launch a new career in web development\n"
                  "today by learning C++. You don't need\n"
                  "a computer science degree or expensive software.\n"
                  "All you need is a computer, a bit of time, a lot of\n"
                  "determination, and a teacher you trust."),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              const SizedBox(
                width: 30,
              ),
              Text(
                'Duration',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const Row(
            children: [
              const SizedBox(
                width: 30,
              ),
              Text(
                '1h15min',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          // ignore: prefer_const_constructors
          SizedBox(
            height: 30,
          ),
          roundbutton(
            onpress: () {},
            title: 'Add to cart',
          )
        ],
      ),
    );
  }
}
