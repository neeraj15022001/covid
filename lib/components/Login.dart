import 'package:covid/components/Custom%20Elevated%20Button/customElevatedButton.dart';
import 'package:covid/components/Custom%20Rich%20Text/CustomRichText.dart';
import 'package:covid/components/Custom%20Text%20Field/customTextField.dart';
import 'package:covid/components/Page%20Heading/CustomPageHeading.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: _login(context),
    );
  }
}

Widget _login(BuildContext context) {
  return Scaffold(
    body: SafeArea(
      child: Container(
        padding: EdgeInsets.all(32.0),
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: ListView(
          children: [
            SizedBox(
              height: 40,
            ),
            CustomPageHeading(
              heading: "Login",
              textColor: Color(0xff5F547C),
            ),
            SizedBox(height: 72),
            CustomTextField(textToBeShown: "Enter Email"),
            SizedBox(
              height: 28,
            ),
            CustomTextField(
              textToBeShown: "Enter Password",
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 150,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 25,
                    child: Text(
                      "Forgot Password ?",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 15,
                          color: Color(0xff5F547C),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: CustomElevatedButton(
                        borderRadius: 20.0,
                        buttonColor: Color(0xff5F547C),
                        fontColor: Colors.white,
                        padding: 20.0,
                        text: "Submit",
                      ),
                    ),
                  ),
                  Positioned(
                    top: -20,
                    right: 0,
                    child: Image.asset(
                      "assets/Login.png",
                      height: 146,
                      width: 146,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CustomRichText(
              regularText: "Not Registered? ",
              boldText: "Register here",
              fontColor: Color(0xff5F547C),
            )
          ],
        ),
      ),
    ),
  );
}
