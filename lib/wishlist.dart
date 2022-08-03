import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WishList extends StatefulWidget {
  const WishList({Key? key}) : super(key: key);

  @override
  _WishListState createState() => _WishListState();
}

class _WishListState extends State<WishList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text('Edit',
            style: TextStyle(color: Colors.black,),
          ),
          leading: IconButton(onPressed: () { Navigator.pop(context);}, icon: Icon(Icons.arrow_back),
            color: Colors.black,),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left:30, top: 10, right: 10, bottom: 8 ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Wish List",
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 33,
                  width: 349,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                        style: BorderStyle.solid
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text("Lorem ipsum dolor sit amet, consectetur egestas lectus."),
                ),
                Container(
                  margin: EdgeInsets.all(30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(child: Text("#1"), alignment: Alignment.topLeft,),
                      Stack(
                        children: <Widget>[
                          SizedBox(
                            height: 33,
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black,
                                    width: 1.0,
                                    style: BorderStyle.solid
                                ),
                                borderRadius: BorderRadius.only(topRight: Radius.circular(5.0),
                                    bottomRight: Radius.circular(5.0)
                                ),
                              ),
                              child: ClipRRect(
                                child: LinearProgressIndicator(
                                  value: 0.03,
                                  backgroundColor: Colors.transparent,
                                  valueColor: AlwaysStoppedAnimation<Color>(Colors.yellow),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      Align(child: Text("#2"), alignment: Alignment.topLeft,),
                      Stack(
                        children: <Widget>[
                          SizedBox(
                            height: 33,
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black,
                                    width: 1.0,
                                    style: BorderStyle.solid
                                ),
                                borderRadius: BorderRadius.only(topRight: Radius.circular(5.0),
                                    bottomRight: Radius.circular(5.0)
                                ),
                              ),
                              child: ClipRRect(
                                child: LinearProgressIndicator(
                                  value: 0.03,
                                  backgroundColor: Colors.transparent,
                                  valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      Align(child: Text("#3"), alignment: Alignment.topLeft,),
                      Stack(
                        children: <Widget>[
                          SizedBox(
                            height: 33,
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black,
                                    width: 1.0,
                                    style: BorderStyle.solid
                                ),
                                borderRadius: BorderRadius.only(topRight: Radius.circular(5.0),
                                    bottomRight: Radius.circular(5.0)
                                ),
                              ),
                              child: ClipRRect(
                                child: LinearProgressIndicator(
                                  value: 0.03,
                                  backgroundColor: Colors.transparent,
                                  valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      Align(child: Text("#4"), alignment: Alignment.topLeft,),
                      Stack(
                        children: <Widget>[
                          SizedBox(
                            height: 33,
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black,
                                    width: 1.0,
                                    style: BorderStyle.solid
                                ),
                                borderRadius: BorderRadius.only(topRight: Radius.circular(5.0),
                                    bottomRight: Radius.circular(5.0)
                                ),
                              ),
                              child: ClipRRect(
                                child: LinearProgressIndicator(
                                  value: 0.03,
                                  backgroundColor: Colors.transparent,
                                  valueColor: AlwaysStoppedAnimation<Color>(Colors.lightBlue),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      Align(child: Text("#5"), alignment: Alignment.topLeft,),
                      Stack(
                        children: <Widget>[
                          SizedBox(
                            height: 33,
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black,
                                    width: 1.0,
                                    style: BorderStyle.solid
                                ),
                                borderRadius: BorderRadius.only(topRight: Radius.circular(5.0),
                                    bottomRight: Radius.circular(5.0)
                                ),
                              ),
                              child: ClipRRect(
                                child: LinearProgressIndicator(
                                  value: 0.03,
                                  backgroundColor: Colors.transparent,
                                  valueColor: AlwaysStoppedAnimation<Color>(Colors.blueGrey),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      Align(child: Text("#6"), alignment: Alignment.topLeft,),
                      Stack(
                        children: <Widget>[
                          SizedBox(
                            height: 33,
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black,
                                    width: 1.0,
                                    style: BorderStyle.solid
                                ),
                                borderRadius: BorderRadius.only(topRight: Radius.circular(5.0),
                                    bottomRight: Radius.circular(5.0)
                                ),
                              ),
                              child: ClipRRect(
                                child: LinearProgressIndicator(
                                  value: 0.03,
                                  backgroundColor: Colors.transparent,
                                  valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5)
                        ),
                        margin: EdgeInsets.all(25),
                        child: FlatButton(
                          child: Text('Update', style: TextStyle(fontSize: 20.0),),
                          color: Color(0xff0057FF),
                          textColor: Colors.white,
                          onPressed: () {},
                        ),
                      ),

                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}
