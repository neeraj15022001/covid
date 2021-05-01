import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomRichText extends StatelessWidget {
  CustomRichText({
    @required this.regularText,
    @required this.boldText,
    this.fontSize: 15,
    @required this.fontColor,
  });
  final String regularText;
  final String boldText;
  final double fontSize;
  final Color fontColor;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: regularText,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(
            fontSize: fontSize,
            color: fontColor,
          ),
        ),
        children: <TextSpan>[
          TextSpan(
              text: boldText,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              )),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
