import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrimaryButton extends StatelessWidget {
  final Function() onTap;

  const PrimaryButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTap,
        child: Text(
          'Continue',
          style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w300),
        ));
  }
}
