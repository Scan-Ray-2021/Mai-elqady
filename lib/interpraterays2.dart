import 'package:flutter/material.dart';

class Interpretrays2 extends StatelessWidget {
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
            padding: EdgeInsets.only(top: 20),
            color: Colors.deepPurple[50],
            child: Column(children: <Widget>[
              Container(
                color: Colors.deepPurple[50],
                margin: EdgeInsets.only(left: 3),
                alignment: Alignment.topCenter,
                height: 80,
                child: Text(
                  'Hope You Get Better Soon !',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                color: Colors.deepPurple[50],
                alignment: Alignment.topCenter,
                height: 50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Your Rays' Type is :",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                  ],
                )
              ),
              Container(
                  color: Colors.deepPurple[50],
                  height: 100,
                width: 180,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.check_circle_rounded, color: Colors.deepPurple,size: 33,),

                  ],
                )

              ),
              ButtonTheme(
                minWidth: 150,
                height: 50,
                // ignore: deprecated_member_use
                child: RaisedButton(
                  onPressed: () => print("object"),
                  child: Text(
                    "Scane",
                    style: TextStyle(fontSize: 30),
                  ),
                  color: Colors.deepPurple,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.deepPurple)),
                ),
              ),
            ]
            ),
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
