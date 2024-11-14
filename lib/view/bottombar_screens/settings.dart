import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Setting',
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              Image.asset(
                'assets/settings.png',
                height: 200,
                width: 200,
              ),
              Container(
                height: 70,
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(12)),
                child: Center(
                  child: ListTile(
                    leading: CircleAvatar(
                        backgroundColor: Colors.blue.withOpacity(0.7),
                        child: const Icon(
                          CupertinoIcons.bell,
                          color: Colors.white,
                        )),
                    title: const Text(
                      'Notification',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    trailing: const Icon(Icons.settings),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Align(
                alignment: Alignment(-0.9, 4),
                child: Text(
                  'Account Information',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 70,
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(12)),
                child: Center(
                  child: ListTile(
                    leading: CircleAvatar(
                        backgroundColor: Colors.blue.withOpacity(0.7),
                        child: const Icon(
                          CupertinoIcons.person,
                          color: Colors.white,
                        )),
                    title: const Text(
                      'Name',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text('Juana Antonia'),
                    trailing: const Icon(Icons.arrow_forward_ios_rounded),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 90,
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(12)),
                child: Center(
                  child: ListTile(
                    leading: CircleAvatar(
                        backgroundColor: Colors.blue.withOpacity(0.7),
                        child: const Icon(
                          CupertinoIcons.bell,
                          color: Colors.white,
                        )),
                    title: const Text(
                      'Email',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text('juanantona6@gmail.com'),
                    trailing: const Icon(Icons.arrow_forward_ios_rounded),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 70,
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(12)),
                child: Center(
                  child: ListTile(
                    leading: CircleAvatar(
                        backgroundColor: Colors.blue.withOpacity(0.7),
                        child: const Icon(
                          CupertinoIcons.bell,
                          color: Colors.white,
                        )),
                    title: const Text(
                      'Password',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text('Changed 2 weeks ago'),
                    trailing: const Icon(Icons.arrow_forward_ios_rounded),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
