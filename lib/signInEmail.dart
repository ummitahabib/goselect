import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goselect/sign_in.dart';
import 'package:goselect/verification.dart';

class SignInMail extends StatefulWidget {
  const SignInMail({Key? key}) : super(key: key);

  @override
  _SignInMailState createState() => _SignInMailState();
}

class _SignInMailState extends State<SignInMail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.all(40.0),
          child: Column(
            children: [
              RichText(
                textAlign: TextAlign.left,
                text: TextSpan(children: [
                  TextSpan(
                    text: 'Let’s get setup\n',
                    style: TextStyle(
                        color: Color(0xFF0057FF), fontSize: 30, fontWeight: FontWeight.bold),


                  ),
                  TextSpan(
                    text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                    style: TextStyle(
                        color: Color(0xFFA0A0A0), fontSize: 15),
                  ),
                ]),
              ),

              SizedBox(height: 46,),

              Container(
                child: SizedBox(
                  width: 343,
                  height: 49,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Email",
                        hintStyle: TextStyle(color: Color(0xFFB6BECB)),
                        border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 3, color: Color(0xffE5EEFF)),
                            borderRadius: BorderRadius.circular(5.0)),
                        fillColor: Color(0xffE5EEFF),
                        filled: true),
                  ),
                ),
              ),
              SizedBox(height: 21,),
              SizedBox(
                width: 343,
                height: 52,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Verify()),
                    );
                  },
                  child: Text("Next"),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff0057FF),
                    shape: new RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 250,
              ),
              Positioned(
                top: 10,
                left: 0,
                right: 0,
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SignIn()),
                      );
                    },
                    child: Text(
                      'already have an account',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 13),
                    ),
                    style: ElevatedButton.styleFrom(elevation: 0, primary: Colors.white,),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
