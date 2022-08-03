
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'edit.dart';

class Profile_ extends StatefulWidget {
  const Profile_({Key? key}) : super(key: key);

  @override
  _Profile_State createState() => _Profile_State();
}

class _Profile_State extends State<Profile_> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text('My Profile',
            style: TextStyle(color: Colors.black, fontSize: 20,),
          ),
          leading: IconButton(onPressed: () {
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back),
            color: Colors.black,),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.settings,
                    size: 26.0,
                    color: Colors.black,
                  ),
                )
            ),
          ],
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Center(
                        child: Image.asset('assets/images/img_unsplashbzsfm6_4.png',
                          width: 131,
                          height: 129,),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(children: [
                      TextSpan(
                        text: 'Sadiq | ',
                        style: TextStyle(
                            color: Color(0xFF444444), fontSize: 20, fontWeight: FontWeight.bold),


                      ),
                      TextSpan(
                        text: 'Sadiq#243 \n\n',
                        style: TextStyle(
                            color: Color(0xFFD9D9D9), fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: 'adipiscing elit. Nulla turpis sapien',
                        style: TextStyle(
                            color: Color(0xFFA0A0A0), fontSize: 14),
                      ),
                    ]),
                  ),
                ),




                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Container(
                          child: SizedBox(
                            child: new Container(
                              height: 46,
                              width: 182,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black,
                                    width: 1.0,
                                    style: BorderStyle.solid
                                ),
                                color: Color(0xffF6BD12),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(child: Text("Mode")),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => editProfile()));
                          },
                          child: Container(
                            child: SizedBox(
                              child: new Container(
                                height: 46,
                                width: 129,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black,
                                      width: 1.0,
                                      style: BorderStyle.solid
                                  ),
                                  color: Color(0xff0057FF),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(child: Text("Edit")),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Container(
                  child: RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(children: [
                      TextSpan(
                        text: 'Friends | ',
                        style: TextStyle(
                            color: Color(0xFF444444), fontSize: 20, fontWeight: FontWeight.bold),


                      ),
                      TextSpan(
                        text: 'spin# | ',
                        style: TextStyle(
                            color: Color(0xFFD9D9D9), fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: 'star#\n',
                        style: TextStyle(
                            color: Color(0xFFD9D9D9), fontSize: 20, fontWeight: FontWeight.bold),
                      ),

                      TextSpan(
                        text: '    10      | ',
                        style: TextStyle(
                            color: Color(0xFF444444), fontSize: 20, fontWeight: FontWeight.bold),


                      ),

                      TextSpan(
                        text: '100    | ',
                        style: TextStyle(
                            color: Color(0xFF444444), fontSize: 20, fontWeight: FontWeight.bold),


                      ),

                      TextSpan(
                        text: '50',
                        style: TextStyle(
                            color: Color(0xFF444444), fontSize: 20, fontWeight: FontWeight.bold),


                      ),
                    ]),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        width: 330,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Column(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Container(
                                    width: 91,
                                    height: 34,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Center(
                                      child: Text('wish List',
                                        style: TextStyle(color: Colors.black, fontSize: 15),),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),

                Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black54, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:20.0, right: 20.0, top: 10.0),
                        child: Container(
                          child: Row(
                            children: <Widget>[
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      width: 91,
                                      height: 34,
                                      decoration: BoxDecoration(
                                        color: Color(0xffF6BD12),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Center(
                                        child: Text('Tesla',
                                          style: TextStyle(color: Color(0xffFFFFFF), fontSize: 15),),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      width: 91,
                                      height: 34,
                                      decoration: BoxDecoration(
                                        color: Color(0xffF55C5C),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Center(
                                        child: Text('Mac M1',
                                          style: TextStyle(color: Color(0xffFFFFFF), fontSize: 15),),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left:30.0, right: 70.0),
                        child: Container(
                          child: Row(
                            children: <Widget>[
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      width: 91,
                                      height: 34,
                                      decoration: BoxDecoration(
                                        color: Color(0xffA83C00),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Center(
                                        child: Text('VR quest 2',
                                          style: TextStyle(color: Color(0xffFFFFFF), fontSize: 15),),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      width: 91,
                                      height: 34,
                                      decoration: BoxDecoration(
                                        color: Color(0xff0057FF),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Center(
                                        child: Text('Rtx 3090',
                                          style: TextStyle(color: Color(0xffffffff), fontSize: 15),),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),


                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Row(
                            children: <Widget>[
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      width: 91,
                                      height: 34,
                                      decoration: BoxDecoration(
                                        color: Color(0xff003395),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Center(
                                        child: Text('Pringles',
                                          style: TextStyle(color: Color(0xffffffff), fontSize: 15),),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      width: 91,
                                      height: 34,
                                      decoration: BoxDecoration(
                                        color: Color(0xff43A4FE),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Center(
                                        child: Text('Coffe cup',
                                          style: TextStyle(color: Color(0xffffffff), fontSize: 15),),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),




                    ],
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
