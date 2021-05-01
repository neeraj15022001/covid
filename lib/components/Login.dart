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
            Text(
              "Login",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 56,
                  color: Color(0xff5F547C),
                  fontWeight: FontWeight.bold,
                ),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 72),
            TextField(
              decoration: InputDecoration(
                hintText: "Enter Email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
              ),
            ),
            SizedBox(
              height: 28,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Enter Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              // color: Colors.red[100],
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
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Submit"),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            Color(0xff5F547C),
                          ),
                          padding: MaterialStateProperty.all(
                            EdgeInsets.all(20),
                          ),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                          ),
                        ),
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
            RichText(
              text: TextSpan(
                text: 'Not Registered?',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 15,
                    color: Color(0xff5F547C),
                  ),
                ),
                children: <TextSpan>[
                  TextSpan(
                      text: ' Register Here',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                ],
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    ),
  );
}
