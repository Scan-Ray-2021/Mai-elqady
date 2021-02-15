import 'package:flutter/material.dart';
import 'package:flutter_app1/Aboutct_ray.dart';
import 'package:flutter_app1/Aboutmri_ray.dart';
import 'package:flutter_app1/resultrays.dart';
import 'package:flutter_app1/interpraterays2.dart';

import 'package:flutter_app1/Aboutx-ray.dart';

enum checkListRays { xray, ctray, mriray }


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    home: MyAppFul(),
    );
  }
}

class MyAppFul extends StatefulWidget {


  @override
  _MyAppFulState createState() => _MyAppFulState();
}

class _MyAppFulState extends State<MyAppFul> {
  checkListRays _character = checkListRays.xray;

  @override
  Widget build(BuildContext context) {
   return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepPurple,
            title: Text("RAY SCAN",
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 27,
                    fontStyle: FontStyle.normal,
                    color: Colors.white)),
            actions: <Widget>[

              Container(
                padding: EdgeInsets.only(right: 25),
                child: CircleAvatar(
                  child: ClipOval(
                    child: Icon(
                      Icons.account_circle_rounded,
                      size: 44,
                    ),
                  ),
                ),
              ),
            ],
          ),
          body: Container(
            padding: EdgeInsets.only(top: 7),
            color: Colors.deepPurple[50],
            child: Column(
              children: <Widget>[

                Container(
                  color: Colors.deepPurple[50],
                  margin: EdgeInsets.only(left: 3),
                  alignment: Alignment.center,
                  height: 50,
                  child: Text(
                    'Hope You Get Better Soon !',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepPurple[50],
                  alignment: Alignment.center,
                  height: 100,
                  child: Text(
                    "Can You Define The Rays Type?",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

            Column(
              children: <Widget>[
                ListTile(
                  title: const Text('X_RAY',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                  leading: Radio(
                  value: checkListRays.xray,
                  groupValue: _character,
                  onChanged: (checkListRays value) {
                    setState(() {
                      _character = value;
                    });
                  },
                )),
                ListTile(
                  title: const Text('CT_RAY',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                  leading: Radio(
                  value: checkListRays.ctray,
                  groupValue: _character,
                  onChanged: (checkListRays value) {
                    setState(() {
                      _character = value;
                    });
                  },
                  )),
                ListTile(
                  title: const Text('MRI_RAY ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                    leading: Radio(
                  value: checkListRays.mriray,
                  groupValue: _character,
                  onChanged: (checkListRays value) {
                    setState(() {
                      _character = value;
                    });
                  },
                  )
                ),
              ],
            ),
                ButtonTheme(
                  minWidth: 150,
                  height: 50,
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    onPressed: (){
                      print("do nothing");
                    },
                    child: Text(
                      'Scan',
                      style: TextStyle(fontSize: 30),
                    ),
                    color: Colors.deepPurple,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.deepPurple)),
                  ),
                ),
                Container(
                  color: Colors.deepPurple[50],
                  padding: EdgeInsets.all(25),
                  child: Text(
                    "Couldn't Define Rayes'Type?",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ButtonTheme(
                  minWidth: 150,
                  height: 50,
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    onPressed:() {
                      Navigator.of(context).push(MaterialPageRoute(builder: (_) => Aboutxrays()));
                    },
                    child: Text(
                      'Scan',
                      style: TextStyle(fontSize: 30),
                    ),
                    color: Colors.deepPurple,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.deepPurple)),
                  ),
                ),
              ],
            ),
          ),
          // This trailing comma makes auto-formatting nicer for build methods.

          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.deepPurple, size: 40),
                label: 'HOME',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.camera, color: Colors.deepPurple, size: 40),
                label: 'CAMERA',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.location_on, color: Colors.red, size: 40),
                label: 'LOCATION',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.apps, color: Colors.deepPurple, size: 40),
                label: ' ',
              ),
            ],
          )
            );
  }
}
