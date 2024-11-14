import 'package:flutter/material.dart';
import 'package:techmobapp/resources/Appcolors.dart';

class roundbutton extends StatelessWidget {
  final String title;
  final bool loading;
  final VoidCallback onpress;
  roundbutton(
      {super.key,
      this.title = 'Next',
      this.loading = false,
      required this.onpress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        height: 50,
        width: 300,
        decoration: BoxDecoration(
            color: Appcolors.orangecolor,
            borderRadius: BorderRadius.circular(12)),
        child: Center(
            child: loading == true
                ? const CircularProgressIndicator(
                    color: Colors.white,
                    strokeWidth: 3,
                  )
                : Text(
                    title,
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                  )),
      ),
    );
  }
}
