import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goselect/activemode.dart';
import 'package:goselect/wishlist.dart';

import 'headline.dart';

class editProfile extends StatefulWidget {
  const editProfile({Key? key}) : super(key: key);

  @override
  _editProfileState createState() => _editProfileState();
}

class _editProfileState extends State<editProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white, appBar: AppBar(
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
                Padding(
                  padding: const EdgeInsets.only(left:33, top: 10, right: 10, bottom: 8 ),
                  child: Container(
                    color: Colors.white,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('My Account',
                      ),
                    ),
                  ),
                ),
               Container(
                 width: 339,
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                   color: Color(0xffD9D9D9),),
                 child: Expanded(
                   child: Column(
                     children: [
                       GestureDetector(
                         onTap: () {
                           Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => headLine()));
                         },
                         child: ListTile(
                           title: Text("Headline",
                           style: TextStyle(
                             fontSize: 15,
                             fontFamily: 'Poppins',
                             color: Color(0xff161616)
                           ),),
                           isThreeLine: false,
                           trailing: IconButton(
                             onPressed: () {},
                             icon: Icon(Icons.arrow_forward_ios_outlined),
                           ),
                         ),
                       ),
                       const Divider(
                         thickness: 1, // thickness of the line
                         indent: 20, // empty space to the leading edge of divider.
                         endIndent: 20, // empty space to the trailing edge of the divider.
                         color: Colors.black38, // The color to use when painting the line.
                         height: 20, // The divider's height extent.
                       ),
                       GestureDetector(
                         onTap: () {
                           Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ActiveMode()));
                         },
                         child: ListTile(
                           title: Text("Active Mode",
                             style: TextStyle(
                                 fontSize: 15,
                                 fontFamily: 'Poppins',
                                 color: Color(0xff161616)
                             ),),
                           isThreeLine: false,
                           trailing: IconButton(
                             onPressed: () {
                               Navigator.push(
                                 context,
                                 MaterialPageRoute(builder: (context) => const ActiveMode()),
                               );
                             },
                             icon: Icon(Icons.arrow_forward_ios_outlined),
                           ),
                         ),
                       ),
                       const Divider(
                         thickness: 1, // thickness of the line
                         indent: 20, // empty space to the leading edge of divider.
                         endIndent: 20, // empty space to the trailing edge of the divider.
                         color: Colors.black38, // The color to use when painting the line.
                         height: 20, // The divider's height extent.
                       ),
                       GestureDetector(
                         onTap: () {
                           Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => WishList()));
                         },
                         child: ListTile(
                           title: Text("Wish List",
                             style: TextStyle(
                                 fontSize: 15,
                                 fontFamily: 'Poppins',
                                 color: Color(0xff161616)
                             ),),
                           isThreeLine: false,
                           trailing: IconButton(
                             onPressed: () {
                               Navigator.push(
                                 context,
                                 MaterialPageRoute(builder: (context) => const WishList()),
                               );
                             },
                             icon: Icon(Icons.arrow_forward_ios_outlined),
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
        )
    );
  }
}
