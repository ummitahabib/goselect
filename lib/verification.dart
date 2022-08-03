import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goselect/create_account.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class Verify extends StatefulWidget {
  const Verify({Key? key}) : super(key: key);

  @override
  _VerifyState createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
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
                    text: 'Verify Email\n',
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
                  child: OTPTextField(
                    length: 4,
                    width: MediaQuery.of(context).size.width,
                    fieldWidth: 40,
                    textFieldAlignment: MainAxisAlignment.spaceAround,
                    fieldStyle: FieldStyle.underline,
                    onCompleted: (pin) {
                      print("Completed: " + pin);
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 69,
              ),
              SizedBox(
                width: 343,
                height: 52,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const CreateAccount()),
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




            ],
          ),
        ),
      ),
    );
  }
}
