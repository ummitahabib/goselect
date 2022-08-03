import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goselect/home_Page.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  int _currentPage = 0;
  List colors = [Color(0xffFFFFFF)];

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors[_currentPage],
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.all(40.0),
          child: Column(
            children: [
              RichText(
                textAlign: TextAlign.left,
                text: TextSpan(children: [
                  TextSpan(
                    text: 'Create a New Account\n',
                    style: TextStyle(
                        color: Color(0xFF0057FF), fontSize: 27, fontWeight: FontWeight.bold),


                  ),
                  TextSpan(
                    text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                    style: TextStyle(
                        color: Color(0xFFA0A0A0), fontSize: 14),
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
                        hintText: "Fullname",
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
              SizedBox(height: 26,),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        child: SizedBox(
                          width: 200,
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
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Container(
                        child: SizedBox(
                          width: 50,
                          height: 49,
                          child: TextField(
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                    BorderSide(width: 2, color: Color(0xff0057FF)),
                                    borderRadius: BorderRadius.circular(5.0)),
                                fillColor: Color(0xffffffff),
                                filled: true),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 10),
              SingleChildScrollView(
                child: Row(
                  children: <Widget>[
                    Checkbox(
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    SizedBox(
                        width: 230,
                        height: 38,
                        child: Text('I agreed to the Terms and Service and privacy policy',
                          style: TextStyle(
                              fontSize: 13.0
                          ),)
                    )


                  ],
                ),
              ),


              SizedBox(height: 114,),
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
                    child: Text("Create Account"),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff0057FF),
                      shape: new RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
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
