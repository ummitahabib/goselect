
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Notify extends StatefulWidget {
  const Notify({Key? key}) : super(key: key);

  @override
  _NotifyState createState() => _NotifyState();
}

class _NotifyState extends State<Notify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text('Notification',
            style: TextStyle(color: Colors.black, fontSize: 20,),
          ),
          leading: IconButton(onPressed: () {
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back),
            color: Colors.black,),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ListTile(
                  title: Text("Cornnor#886 \n "),
                  isThreeLine: false,
                  leading: Image(image: AssetImage('assets/images/img_unsplash2crxtr.png'),
                    width: 52,
                    height: 52,),
                  subtitle: Row(
                      children: [
                        SizedBox(
                          width: 122,
                          height: 25,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Accept',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Mulish',
                                  fontSize: 12),
                            ),
                            style: ElevatedButton.styleFrom(elevation: 0, primary: Color(0xff0057FF),),
                          ),
                        ),
                        SizedBox(width: 13,),

                        SizedBox(
                          width: 84,
                          height: 25,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Cancel',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Mulish',
                                  fontSize: 12),
                            ),
                            style: ElevatedButton.styleFrom(elevation: 0, primary: Color(0xffF0F0F0),),
                          ),
                        ),

                      ]
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Divider(
                  color: Colors.black54,
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: Text("christian#796\n "),
                  isThreeLine: false,
                  leading: Image(image: AssetImage('assets/images/img_unsplashditylc.png'),
                    width: 52,
                    height: 52,),
                  subtitle: Row(
                      children: [
                        SizedBox(
                          width: 122,
                          height: 25,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Accept',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Mulish',
                                  fontSize: 12),
                            ),
                            style: ElevatedButton.styleFrom(elevation: 0, primary: Color(0xff0057FF),),
                          ),
                        ),
                        SizedBox(width: 13,),

                        SizedBox(
                          width: 84,
                          height: 25,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Cancel',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Mulish',
                                  fontSize: 12),
                            ),
                            style: ElevatedButton.styleFrom(elevation: 0, primary: Color(0xffF0F0F0),),
                          ),
                        ),

                      ]
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Divider(
                  color: Colors.black54,
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: Text("Patrik#019\n "),
                  isThreeLine: false,
                  leading: Image(image: AssetImage('assets/images/img_unsplashrtvgs4.png'),
                    width: 52,
                    height: 52,),
                  subtitle: Row(
                      children: [
                        SizedBox(
                          width: 122,
                          height: 25,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Accept',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Mulish',
                                  fontSize: 12),
                            ),
                            style: ElevatedButton.styleFrom(elevation: 0, primary: Color(0xff0057FF),),
                          ),
                        ),
                        SizedBox(width: 13,),

                        SizedBox(
                          width: 84,
                          height: 25,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Cancel',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Mulish',
                                  fontSize: 12),
                            ),
                            style: ElevatedButton.styleFrom(elevation: 0, primary: Color(0xffF0F0F0),),
                          ),
                        ),

                      ]
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Divider(
                  color: Colors.black54,
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        )
    );
  }
}


