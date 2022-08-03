import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goselect/home_Page.dart';

class Activities extends StatefulWidget {
  const Activities({Key? key}) : super(key: key);

  @override
  _ActivitiesState createState() => _ActivitiesState();
}

class _ActivitiesState extends State<Activities> {
  int _currentPage = 0;
  List colors = [Color(0xffFFFFFF)];
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: colors[_currentPage],
          appBar: new AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Homepage()),
                );
              },
              icon: Icon(Icons.arrow_back,
                color: Colors.black,),
            ),
            bottom: PreferredSize(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left:23, top: 10, right: 10, bottom: 8 ),
                    child: Container(
                      color: Colors.white,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text('All Activities',
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 45,
                    width: 360,
                    decoration: BoxDecoration(
                        color: Color(0xff0057FF),
                        borderRadius: BorderRadius.circular(4.0)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TabBar(
                        indicator: BoxDecoration(color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.black,
                        tabs: [
                          Tab(text: 'Spin'),
                          Tab(text: 'Friends'),
                          Tab(text: 'History'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              preferredSize: Size.fromHeight(50.0),
            ),
          ),
          body: Container(
            decoration: BoxDecoration(
                color: Colors.white
            ),
            child: TabBarView(
              children: [
                ListView(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 15),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("Lorem ipsum dolor sit amet, consectetur "),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          ListTile(
                              title: Text("Sadiq#243",),
                              isThreeLine: false,
                              trailing: Image.asset('assets/images/img_pin1.png',
                                width: 19,
                                height: 19,),
                              leading: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: SizedBox(
                                    height: 32.0,
                                    width: 32.0, // fixed width and height
                                    child: Image.asset('assets/images/avatar.png')
                                ),
                              )
                          ),
                          Container(
                              margin: EdgeInsets.only(left:12),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Friend",
                                    style: TextStyle(fontSize: 20, fontFamily: 'Poppins', ),
                                  ),
                                ],
                              )
                          ),
                          const Divider(),
                          ListTile(
                              title: Text("christopher#147"),
                              isThreeLine: false,
                              trailing: Text("01"),
                              leading: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: SizedBox(
                                    height: 32.0,
                                    width: 32.0, /// fixed width and height
                                    child: Image.asset('assets/images/img_unsplashrdeovt.png')
                                ),
                              )
                          ),
                          const Divider(),
                          ListTile(
                              title: Text("Radu#778"),
                              isThreeLine: false,
                              trailing: Text("02"),
                              leading: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: SizedBox(
                                    height: 32.0,
                                    width: 32.0, /// fixed width and height
                                    child: Image.asset('assets/images/img_unsplashjyvcai.png')
                                ),
                              )
                          ),
                          const Divider(),
                          ListTile(
                              title: Text("Larry#050"),
                              isThreeLine: false,
                              trailing: Text("03"),
                              leading: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: SizedBox(
                                    height: 32.0,
                                    width: 32.0, /// fixed width and height
                                    child: Image.asset('assets/images/img_unsplashbdwqmv.png')
                                ),
                              )
                          ),
                          const Divider(),
                          ListTile(
                              title: Text("dusan#115"),
                              isThreeLine: false,
                              trailing: Text("04"),
                              leading: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: SizedBox(
                                    height: 32.0,
                                    width: 32.0, /// fixed width and height
                                    child: Image.asset('assets/images/img_unsplashfowxt.png')
                                ),
                              )
                          ),
                          const Divider(),

                          Container(
                              child: RaisedButton(
                                child: Text(
                                  'Spin',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7),
                                    side: BorderSide(color: Colors.black, width: 3)),
                                color: Colors.yellowAccent,
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) => _buildPopupDialog(context),
                                  );
                                },)
                          )
                        ],
                      ),
                    ),
                  ],
                ),

                ListView(
                  children: <Widget>[
                    Container(
                      width: 360,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffF3F3F3),
                      ),
                      margin: EdgeInsets.all(12),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: (){
                              //action coe when button is pressed
                            },
                            icon: Icon(Icons.search),
                          ),
                          Text('search using friends id ', style: TextStyle(fontSize: 20, fontFamily: 'Poppins', ))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                              margin: EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Friends",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                ],
                              )
                          ),
                          const Divider(),
                          ListTile(
                              title: Text("christopher#147"),
                              isThreeLine: false,
                              trailing: Text("01"),
                              leading: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: SizedBox(
                                    height: 32.0,
                                    width: 32.0, /// fixed width and height
                                    child: Image.asset('assets/images/img_unsplashrdeovt.png')
                                ),
                              )
                          ),
                          const Divider(),
                          ListTile(
                              title: Text("Radu#778"),
                              isThreeLine: false,
                              trailing: Text("02"),
                              leading: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: SizedBox(
                                    height: 32.0,
                                    width: 32.0, /// fixed width and height
                                    child: Image.asset('assets/images/img_unsplashjyvcai.png')
                                ),
                              )
                          ),
                          const Divider(),
                          ListTile(
                              title: Text("Larry#050"),
                              isThreeLine: false,
                              trailing: Text("03"),
                              leading: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: SizedBox(
                                    height: 32.0,
                                    width: 32.0, /// fixed width and height
                                    child: Image.asset('assets/images/img_unsplashbdwqmv.png')
                                ),
                              )
                          ),
                          const Divider(),
                          ListTile(
                              title: Text("dusan#115"),
                              isThreeLine: false,
                              trailing: Text("04"),
                              leading: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: SizedBox(
                                    height: 32.0,
                                    width: 32.0, /// fixed width and height
                                    child: Image.asset('assets/images/img_unsplashfowxt.png')
                                ),
                              )
                          ),
                          const Divider(),
                        ],
                      ),
                    ),
                  ],
                ),


                ListView(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 5,
                          ),



                          Card(
                            child: ListTile(
                              leading: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: SizedBox(
                                    height: 52.0,
                                    width: 52.0, /// fixed width and height
                                    child: Image.asset('assets/images/img_unsplashfowxt.png')
                                ),
                              ),

                              title: Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('dusan#115'),
                                    Image.asset('assets/images/img_creditcard1.png',
                                      width: 36,
                                      height: 36,),
                                  ],
                                ),
                              ),
                              subtitle: Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('12:35pm'),
                                    Text('01/03/2022'),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          Card(
                            child: ListTile(
                              leading: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: SizedBox(
                                    height: 52.0,
                                    width: 52.0, /// fixed width and height
                                    child: Image.asset('assets/images/img_unsplashbzsfm6.png')
                                ),
                              ),

                              title: Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Sadiq#243'),
                                    Image.asset('assets/images/img_creditcard1.png',
                                      width: 36,
                                      height: 36,),
                                  ],
                                ),
                              ),
                              subtitle: Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('1:21pm '),
                                    Text('25/02/2022'),
                                  ],
                                ),
                              ),
                            ),
                          ),


                          Card(
                            child: ListTile(
                              leading: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: SizedBox(
                                    height: 52.0,
                                    width: 52.0, /// fixed width and height
                                    child: Image.asset('assets/images/img_unsplashjyvcai.png')
                                ),
                              ),

                              title: Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Radu#778'),
                                    Image.asset('assets/images/img_creditcard1.png',
                                      width: 36,
                                      height: 36,),
                                  ],
                                ),
                              ),
                              subtitle: Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('11:35pm'),
                                    Text('14/03/2022'),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
          floatingActionButton: new FloatingActionButton(
            onPressed: () => null,
            tooltip: 'Increment',
            child: new Icon(Icons.add),
          ), // This trailing comma makes auto-formatting nicer for build methods.
        ));
  }
}





Widget _buildPopupDialog(BuildContext context) {
  return new AlertDialog(
    title: Center(child:  Image.asset('assets/images/img_unsplashfowxt.png',
      height: 52.0,
      width: 52.0, )),
    content: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Center(child: Text("dusan#115")),
        Center(child: Text("Oops it’s you")),
      ],
    ),
    actions: <Widget>[
      Center(
        child: new FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          color: Color(0xff0057FF),
          textColor: Colors.white,
          child: const Text('Pay'),
        ),
      ),
    ],
  );
}