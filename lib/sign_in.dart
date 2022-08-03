import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goselect/verification.dart';

import 'create_account.dart';
import 'home_Page.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
                    text: 'Welcome Back!!\n',
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
                        fillColor: Color(0xFFE5EEFF),
                        filled: true),
                  ),
                ),
              ),
              SizedBox(height: 26,),
              Row(
                children: [
                  Container(
                    child: SizedBox(
                      width: 215,
                      height: 49,
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "password",
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
                  SizedBox(width: 10,),

                  Container(
                    child: SizedBox(
                      width: 50,
                      height: 49,
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 2, color: Color(0xff0057FF)), //<-- SEE HERE
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                  ),


                ],
              ),
              SizedBox(height: 21,),
              Container(
                alignment: Alignment.bottomRight,
                child: Text('Forgot Password?'),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: SizedBox(
                  width: 343,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Homepage()),
                      );
                    },
                    child: Text("Log in"),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff0057FF),
                      shape: new RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 100,
              ),
              Positioned(
                top: 10,
                left: 60,
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Verify()),
                      );
                    },
                    child: Text(
                      'Don’t have account',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w100,
                          fontFamily: 'Poppins',
                          fontSize: 14),
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
