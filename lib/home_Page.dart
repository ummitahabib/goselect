import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goselect/notification.dart';
import 'package:goselect/profile.dart';
import 'activities.dart';
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Container(
          margin: EdgeInsets.only(top: 8),
          child: ListView(
            physics: ClampingScrollPhysics(),
            children: [
              Container(
                margin: EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Profile_()));
                      },
                      child: Container(
                        height: 59,
                        width: 59,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage('assets/images/avatar.png'))
                        ),
                      ),
                    ),
                   GestureDetector(
                       onTap: () {
                         Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Notify()));
                       },
                       child: Image.asset(
                           'assets/images/icons8-notification-50.png',
                       width: 31,
                       height: 31,))
                  ],
                ),
              ),
              SizedBox(height: 21,),
              Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/img_wavinghand.png',
                      width: 19,
                      height: 19,),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text('Sadiq',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Mulish',
                          fontSize: 20),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Container(
                  height: 158,
                  width: 300,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1.0),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.amber,
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 0,
                        right:0,
                        top: 0,
                        child:
                        Image.asset(
                          'assets/images/dices.png',
                          height: 176.93,
                          width: 176.93,
                        ),),
                      Positioned(
                        left: 23,
                        top: 20,
                        child: Text(
                          'Adding\nFun to\nYour life',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Baloo Bhai 2',
                              fontSize: 20,
                          fontWeight: FontWeight.w900),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 16, bottom: 13, top: 20),
                child:  Row(
                  children: [
                    Text('Action',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'Poppins',
                          fontSize: 20),),
                  ],
                ),),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Container(
                  height: 68,
                  width: 365,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1.0),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 0,
                        left:-50,
                        top: 0,
                        child:
                        Image.asset(
                          'assets/images/spinning-wheel.png',
                          height: 176.93,
                          width: 176.93,
                        ),),
                      Positioned(
                        top: 10,
                        left: 0,
                        right: 0,
                        child: Center(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const Activities()),
                              );
                            },
                            child: Text(
                              'Click to Spin',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Mulish',
                                  fontSize: 20),
                            ),
                            style: ElevatedButton.styleFrom(elevation: 0, primary: Colors.white,),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 25,
                        top: 13,
                        child: Container(
                          height: 39,
                          width: 44,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffD9D9D9),
                          ),
                          child: Stack(
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Notify()));
                                  },
                                  child: Center(
                                    child: Image.asset(
                                      'assets/images/icons8-forward-50.png',
                                      width: 25,
                                      height: 25,),
                                  ))
                            ],
                          ),
                        ),)
                    ],
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
