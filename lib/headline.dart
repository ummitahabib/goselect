import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class headLine extends StatefulWidget {
  const headLine({Key? key}) : super(key: key);

  @override
  _headLineState createState() => _headLineState();
}

class _headLineState extends State<headLine> {
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
          leading: IconButton(onPressed: () {
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back),
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
                        "HeadLine",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
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
                  child: Center(child: Text("adipiscing elit. Nulla turpis sapien")),
                )
              ],
            ),
          ),
        )
    );
  }
}
