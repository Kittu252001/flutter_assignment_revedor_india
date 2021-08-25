import 'package:flutter/material.dart';
import 'package:flutter_assignment_revedor_india/screens/Splashscreen.dart';
import 'package:email_auth/email_auth.dart';
import 'package:flutter_assignment_revedor_india/Constrants.dart';
import 'Splashscreen.dart';

class LoginPage extends StatefulWidget {
  get kPrimaryColor => null;
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _otpContoller = TextEditingController();

  void sendOTP() async {
    EmailAuth.sessionName = "session";
    var res = await EmailAuth.sendOtp(receiverMail: _emailController.text);
    if (res) {
      print("OTP Sent");
    } else {
      print("Retry again");
    }
  }

  void verifyOTP() {
    var res = EmailAuth.validate(
        receiverMail: _emailController.text, userOTP: _otpContoller.text);
    if (res) {
      print("OTP Verified");
    } else {
      print("Invalid OTP");
    }
    if (res) {
      Navigator.of(context).pop();
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Splashscreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade900,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'images/welcome-2.png',
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "Enter Email",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      prefixIcon: Icon(
                        Icons.mail_outline,
                        color: Colors.black,
                      ),
                      hintStyle: TextStyle(color: Colors.white),
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Colors.white),
                      suffixIcon: TextButton(
                        child: Text(
                          'Send OTP',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        onPressed: () => sendOTP(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: _otpContoller,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: "Enter OTP",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        prefixIcon: Icon(
                          Icons.password_rounded,
                          color: Colors.black,
                        ),
                        hintStyle: TextStyle(color: Colors.white),
                        labelText: "OTP",
                        labelStyle: TextStyle(color: Colors.white)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      verifyOTP();
                    },
                    style: ElevatedButton.styleFrom(
                      primary: kInActiveCardColor,
                      shape: StadiumBorder(),
                    ),
                    child: Text(
                      "Verify OTP and Continue",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
