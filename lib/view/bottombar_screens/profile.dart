import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
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
            height: 35,
          ),
          Center(
              child: Container(
            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.blue.withOpacity(0.75), width: 4.5),
                borderRadius: BorderRadius.circular(74.7)),
            child: const CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/person.jpg'),
            ),
          )),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 80,
            width: 330,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(12)),
            child: const Center(
              child: Text(
                'Your Courses',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 27),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 80,
            width: 330,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(12)),
            child: const Center(
              child: Text(
                'Saved',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 27),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 80,
            width: 330,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(12)),
            child: const Center(
              child: Text(
                'Payment',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 27),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'logout',
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
