import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends AppBar {
  CustomAppBar(String title)
      : super(
            title: Text(
              title,
              style: GoogleFonts.poppins(
                  fontSize: 16, fontWeight: FontWeight.w800),
            ),
            centerTitle: true);
}
