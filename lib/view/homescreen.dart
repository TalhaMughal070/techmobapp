import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:techmobapp/view/bottombar_screens/course.dart';
import 'package:techmobapp/view/bottombar_screens/profile.dart';
import 'package:techmobapp/view/bottombar_screens/settings.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int _currentindex = 0;
  List list = [const Course(), const Profile(), const Settings()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 70,
        child: BottomNavigationBar(
            elevation: 0,
            currentIndex: _currentindex,
            onTap: (index) {
              setState(() {
                _currentindex = index;
              });
            },
            items: const [
              BottomNavigationBarItem(
                  backgroundColor: Colors.white,
                  icon: Icon(
                    CupertinoIcons.book,
                  ),
                  label: 'Course'),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.profile_circled), label: 'Profile'),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.settings), label: 'Settings'),
            ]),
      ),
      body: list[_currentindex],
    );
  }
}
