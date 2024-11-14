import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:techmobapp/helper/utils.dart';

import 'package:techmobapp/resources/compnents/round_button.dart';
import 'package:techmobapp/view/auth/login_screen.dart';
import 'package:techmobapp/view/homescreen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  bool _loading = false;
  FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Image.asset('assets/sign.png'),
            const Text(
              'Sign up',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 27),
            ),
            const Text(
              'Create your account',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(12)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 2),
                      borderRadius: BorderRadius.circular(12)),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                  hintText: 'Password',
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(12)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 2),
                      borderRadius: BorderRadius.circular(12)),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            roundbutton(
                loading: _loading,
                title: 'Signup',
                onpress: () {
                  setState(() {
                    _loading = true;
                  });
                  _auth
                      .createUserWithEmailAndPassword(
                          email: _emailcontroller.text.toString(),
                          password: _passwordcontroller.text.toString())
                      .then((value) {
                    setState(() {
                      _loading = false;
                    });
                    Utils.showsnackbar('Sign Successfully', context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Homescreen()));
                  }).onError((error, StackTrace) {
                    Utils.showsnackbar(error.toString(), context);
                    setState(() {
                      _loading = false;
                    });
                  });
                }),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account?"),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
