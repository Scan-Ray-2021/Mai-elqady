import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app1/Aboutmri_ray.dart';
import 'package:flutter_app1/Aboutx-ray.dart';

class Aboutctrays extends StatelessWidget {
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
                              onPressed: () => print("object"),
                              child: Text(
                                'CT',
                                style: TextStyle(fontSize: 30),
                              ),
                              color: Colors.amberAccent,
                              textColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.white)),
                            ),
                          ),
                          ButtonTheme(
                            minWidth: 80,
                            height: 50,
                            // ignore: deprecated_member_use
                            child: RaisedButton(
                              padding: EdgeInsets.all(10),
                              onPressed: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (_) => Aboutmrirays()));
                              },
                              child: Text(
                                'MRI',
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
                              'https://4.bp.blogspot.com/-v3l9kd_5qLg/Wz-0o6x_rxI/AAAAAAAACOE/RyAd3MVQJ7gIITM3e3yauJdutp6DAATlgCLcBGAs/s1600/d8a7d984d985d8b3d8aad988d98ad8a7d8aa-d981d98a-d8acd8b3d985-d8a7d984d8a5d986d8b3d8a7d986-21.jpg'),
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
                       child: SingleChildScrollView(
                          child: Text(
                            "الاشعة المقطعية: يتم الحصول على صور مفصلة للأعضاء الداخلية بواسطة هذا النوع من أجهزة الأشعة السينية المتطورة. CT لتقف على التصوير المقطعي."
                                "  ‎يمكن أن يكشف التصوير المقطعي عن تفاصيل تشريحية للأعضاء الداخلية لا يمكن رؤيتها في الأشعة السينية التقليدية. يدور أنبوب الأشعة السينية بسرعة حول المريض وتضرب الأشعة السينية العديد من أجهزة الكشف بعد مرورها عبر الجسم."
                                "    أنواع الاشعة المقطعية: حتى الان لا يوجد الا نوعين : التصوير المقطعى الخطى و التصوير المقطعى بالكمبيوتر ويعتبر هذا الذى يستخدم الان",

                            style: TextStyle(
                                fontSize: 17,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                          ),

                        )

                    )
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
            ));
  }
}
