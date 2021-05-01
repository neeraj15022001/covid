import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  CustomElevatedButton({
    this.buttonColor,
    this.fontColor,
    this.text,
    this.borderRadius: 20.0,
    this.padding,
  }) : assert(text != "");
  final Color buttonColor;
  final Color fontColor;
  final String text;
  final double borderRadius;
  final double padding;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(color: fontColor),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
            buttonColor),
        padding: MaterialStateProperty.all(
          EdgeInsets.all(padding),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
      ),
    );
  }
}
