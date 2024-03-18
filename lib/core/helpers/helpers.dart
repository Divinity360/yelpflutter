import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Helpers {
  Helpers._();

  static void showToast(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
    ));
  }

}
