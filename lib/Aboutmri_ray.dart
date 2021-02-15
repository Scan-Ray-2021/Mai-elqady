import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app1/Aboutct_ray.dart';
import 'package:flutter_app1/Aboutx-ray.dart';

class Aboutmrirays extends StatelessWidget {
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
                  )
                ]),
            body: Container(
              padding: EdgeInsets.all( 5),
              width: 450,
              height: 550,
              color: Colors.deepPurple[50],
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top:8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ButtonTheme(
                            minWidth: 80,
                            height: 50,
                            // ignore: deprecated_member_use
                            child: RaisedButton(
                              padding: EdgeInsets.all(10),
                              onPressed: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (_) => Aboutxrays()));
                              },
                              child: Text(
                                'X-RAY',
                                style: TextStyle(fontSize: 30),
                              ),
                              color: Colors.deepPurple,
                              textColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.deepPurple)),
                            ),
                          ),
                          ButtonTheme(
                            minWidth: 80,
                            height: 50,
                            // ignore: deprecated_member_use
                            child: RaisedButton(
                              padding: EdgeInsets.all(10),
                              onPressed: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (_) => Aboutctrays()));
                              },
                              child: Text(
                                'CT',
                                style: TextStyle(fontSize: 30),
                              ),
                              color: Colors.deepPurple,
                              textColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.deepPurple)),
                            ),
                          ),
                          ButtonTheme(
                            minWidth: 80,
                            height: 50,
                            // ignore: deprecated_member_use
                            child: RaisedButton(
                              padding: EdgeInsets.all(10),
                              onPressed: () => print("object"),
                              child: Text(
                                'MRI',
                                style: TextStyle(fontSize: 30),
                              ),
                              color: Colors.amberAccent,
                              textColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.white)),
                            ),
                          ),
                        ],
                      ),

                    ),
                    SizedBox(
                      height:20.0,
                    ),
                    Container(
                      height: 205,
                      width: 370,
                      decoration: BoxDecoration(
                        color: const Color(0xfff6f4f4),
                        image: const DecorationImage(
                          image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRBE2lJr7i-CjXCvfkv21E9pxy3AghfKaKLag&usqp=CAU&fbclid=IwAR1HPiiEcVT8WFrLB3FPm4c8a7_qtj7nrjZgP488pkrzIMe3Q_nCKjt7V6s'),
                          fit: BoxFit.fill,
                        ),
                        border: Border.all(
                          color: Colors.white24,
                          width: 10,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    SizedBox(
                      height:20.0,
                    ),
                    Container(
                      padding: EdgeInsets.all( 18),
                      alignment: Alignment.center,
                      height: 205,
                      width: 370,
                      decoration: BoxDecoration(
                        color: const Color(0xfff6f4f4),
                        border: Border.all(
                          color: Colors.grey,
                          width: 5,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child:SingleChildScrollView(
                      child: Text(
                        " التصوير بالرنين المغناطيسي: إجراء يستخدم المغناطيسية وموجات الراديو وجهاز كمبيوتر لإنشاء صور لمناطق داخل الجسم. اختصار MRI. التصوير بالرنين المغناطيسي غير مؤلم وله ميزة تجنب التعرض للأشعة السينية.""  "
                         "  لا توجد مخاطر معروفة من التصوير بالرنين المغناطيسي. ترتبط فوائد التصوير بالرنين المغناطيسي بدقته الدقيقة في الكشف عن التشوهات الهيكلية للجسم. المرضى الذين يعانون من أجهزة تنظيم ضربات القلب أو الغرسات المعدنية أو الرقائق المعدنية أو المشابك في العين أو حولها لا يمكن فحصهم باستخدام التصوير بالرنين المغناطيسي بسبب تأثير المغناطيس.",

                        style: TextStyle(
                            fontSize: 17,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                      ),

                    )
                    )]),
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
            )));
  }
}
