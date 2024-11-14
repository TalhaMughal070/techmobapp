import 'package:flutter/material.dart';
import 'package:techmobapp/resources/Appcolors.dart';

class Utils {
  static showsnackbar(dynamic msg, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        behavior: SnackBarBehavior.floating,
        backgroundColor: Appcolors.orangecolor.withOpacity(0.5),
        content: Text(msg)));
  }
}
