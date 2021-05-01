import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomPageHeading extends StatelessWidget {
  CustomPageHeading({
    @required this.heading,
    this.fontSize:56.0,
    @required this.textColor,
  });
  final String heading;
  final double fontSize;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Text(
      heading,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          fontSize: fontSize,
          color: textColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      textAlign: TextAlign.center,
    );
  }
}