import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Helpers {
  Helpers._();

  static void showToast(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
    ));
  }

  static String durationToString(Duration duration) {
    final negativeSign = duration.isNegative ? '-' : '';
    final twoDigitMinutes = duration.inMinutes.remainder(60).abs();
    return duration.inHours >= 1
        ? '$negativeSign${duration.inHours}h ${twoDigitMinutes}m'
        : '${twoDigitMinutes}m';
  }

  static Future<dynamic> modalBottomSheetMenu(BuildContext context, Widget widget) {
    return showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(7.0)),
        ),
        builder: (_) => widget);
  }

  static Future<dynamic> showAlertDialog(BuildContext context, Widget widget) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: EdgeInsets.zero,
          insetPadding: EdgeInsets.all(20),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
          content: widget,
        );
      },
    );
  }
}
