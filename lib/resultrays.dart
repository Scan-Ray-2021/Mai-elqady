import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Resultray extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
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
            padding: EdgeInsets.only(top: 13),

            width: 450,
            height: 590,
            color: Colors.deepPurple[50],
            child: Column(children: [
              Container(
                color: Colors.deepPurple[50],
                child: Text("Interpretation Result",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 27,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
              ),
              SizedBox(
                height:10,
              ),
              Container(
                padding: EdgeInsets.all(30),
                height: 205,
                width: 370,
                decoration: BoxDecoration(
                  color: const Color(0xfff6f4f4),
                  image: const DecorationImage(
                    image: NetworkImage(
                        'https://www.watsonimagingcenter.com/wp-content/uploads/page/912/st-louis-xray-250x300.jpg'),
                    fit: BoxFit.fitWidth,
                  ),
                  border: Border.all(
                    color: Colors.white24,
                    width: 10,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              SizedBox(
                height:15,
              ),
              Container(
                alignment: Alignment.center,
                  height: 185,
                  width: 370,
                  decoration: BoxDecoration(
                    color: const Color(0xfff6f4f4),
                    border: Border.all(
                      color: Colors.white24,
                      width: 10,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),


                child: Text(
                    "The Result Of Iterpretation",

                    style: TextStyle(
                        fontSize: 27,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
              ),
              SizedBox(
                height:10,
              ),
              ButtonTheme(
                minWidth: 150,
                height: 30,
                // ignore: deprecated_member_use
                child: RaisedButton(
                  padding: EdgeInsets.all(10),
                  onPressed: () => print("object"),
                  child: Text(
                    'Nearest Doctor',
                    style: TextStyle(fontSize: 27),
                  ),
                  color: Colors.deepPurple,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.deepPurple)),
                ),
              ),

            ]),
          ),


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
          )),
    );
  }
}
