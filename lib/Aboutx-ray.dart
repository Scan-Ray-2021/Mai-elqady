import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app1/Aboutct_ray.dart';
import 'package:flutter_app1/Aboutmri_ray.dart';

class Aboutxrays extends StatefulWidget {
  @override
  _AboutxraysState createState() => _AboutxraysState();
}

  class _AboutxraysState extends State<Aboutxrays>
  {
    @override
  Widget build(BuildContext context) {
    //return MaterialApp(
       return  Scaffold(
            appBar: AppBar(
                backgroundColor: Colors.deepPurple,
                title: Text("RAY SCAN",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
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
              padding: EdgeInsets.all(5),
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
                              color:Colors.amberAccent,
                              onPressed: (){

                                Navigator.of(context).push(MaterialPageRoute(builder: (_) => Aboutxrays()));
                              },
                              child: Text(
                                'X-RAY',
                                style: TextStyle(fontSize: 30),
                              ),

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
                      height: 20.0,
                    ),
                    Container(
                      height: 205,
                      width: 370,
                      decoration: BoxDecoration(
                        color: const Color(0xffe0d8d8),
                        image: const DecorationImage(
                          image: NetworkImage(
                              'https://static.webteb.net/images/content/tbl_articles_article_18461_243b261f598-4059-4ab5-92b0-119c490a84af.jpg'),
                          fit: BoxFit.fill,
                        ),
                        border: Border.all(
                          color: Colors.white24,

                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                   SizedBox(
                     height:20.0,
                   ),
                 Container(
                   padding: EdgeInsets.all( 10),
                   alignment: Alignment.topRight,
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
                   child:
                      SingleChildScrollView(

                      child: Text(
                        ' هناك نوعين من الأشعةالسينية(العالية والمنخفضة).'
                            'وبشكل عام تمتلك الأشعةالسينية طاقة تتراوح بين (100 eV)و (100 keV)  فالأشعةالتي تمتلك طاقة أعلى من (5-10 keV) تسمى بالأشعة السينيةالعاليةوالأشعة ذات الطاقة الأخفض سميت بالأشعة السينية المنخفضةتستخدم الاشعة السينية فى المجال الطبى  في رؤية بنية العظام وشكلها ويستخدم فيها الأشعة السينية العالية فالكتلةالذريةالعاليةللكالسيوم في الأسنان والعظام تمتص أشعةاكس بينما تخترق باقي الأشعة الخلايا الأخرى في الجسم المسح المقطعي( CT scans) والمطيافية الفلوريةوالعلاج بالاشعاع كعلاج بعض أنواع السرطانات كلها تعد استخدامات اخرى لتقنية التشخيص الاشعاعي'
                            ,
                        style: TextStyle(
                            fontSize: 17,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                      ),
                    ),

                  ) ,
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
