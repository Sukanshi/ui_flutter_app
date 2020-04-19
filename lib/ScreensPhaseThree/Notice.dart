import 'package:flutter/material.dart';
import 'package:game_app/Constants/size_config.dart';

class Notice extends StatefulWidget {
  static const String id = 'Notice';
  @override
  _NoticeState createState() => _NoticeState();
}

class _NoticeState extends State<Notice> {

  static final kNotice = Text('Notifications',
    textAlign: TextAlign.center,
    style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 3.5 * SizeConfig.textMultiplier,
    ),);

  static final kNotice1 = Text('Scoring Request',
    style: TextStyle(
      fontSize: 2.75 * SizeConfig.textMultiplier,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    ),);

  static final kNoticeSubtype1 = Text('Vikramjeet Singh has updated score against Singles match, kindly validate before it expires',
    style: TextStyle(
      fontSize: 2.5 * SizeConfig.textMultiplier,
      color: const Color(0XFF0F33B8),
      fontWeight: FontWeight.w400,
    ),);

  static final kNotice2 = Text('New match created',
    style: TextStyle(
      fontSize: 2.75 * SizeConfig.textMultiplier,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    ),);

  static final kNoticeSubtype2 = Text('Vikramjeet Singh wants to play with you',
    style: TextStyle(
      fontSize: 2.5 * SizeConfig.textMultiplier,
      color: const Color(0XFF0F33B8),
      fontWeight: FontWeight.w400,
    ),);

  static final kNotice3 = Text('Start Scoring',
    style: TextStyle(
      fontSize: 2.75 * SizeConfig.textMultiplier,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    ),);

  static final kNoticeSubtype3 = Text('Vikramjeet Singh has updated score against Singles match, kindly validate before it expires',
    style: TextStyle(
      fontSize: 2.5 * SizeConfig.textMultiplier,
      color: const Color(0XFF0F33B8),
      fontWeight: FontWeight.w400,
    ),);

  static final kNotice4 = Text('Match Confirmed',
    style: TextStyle(
      fontSize: 2.75 * SizeConfig.textMultiplier,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    ),);

  static final kNoticeSubtype4 = Text('Vikramjeet Singh wants to play with you',
    style: TextStyle(
      fontSize: 2.5 * SizeConfig.textMultiplier,
      color: const Color(0XFF0F33B8),
      fontWeight: FontWeight.w400,
    ),);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints){
          return OrientationBuilder(
              builder: (context, orientation) {
                SizeConfig().init(constraints, orientation);
                return MaterialApp(
                  debugShowCheckedModeBanner: false,
                  home: Scaffold(
                    backgroundColor: Colors.grey[350],
                    appBar: AppBar(
                      title: kNotice,
                      backgroundColor: const Color(0XFF0F33B8),
                    ),
                    //---------------Listview is to scroll the screen Vertically--------------
                    body: ListView(
                      children: ListTile.divideTiles(
                        context: context,
                        tiles: [
                          //Sized box is for creating space in between two Containers---------
                          //Containers contain the information text for notices---------------
                          SizedBox(
                            height: 0.75 * SizeConfig.textMultiplier,
                          ),
                          Container(
                            width: 24 * SizeConfig.imageSizeMultiplier,
                            height: 15 * SizeConfig.textMultiplier,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                              onPressed: (){},
                              color: Colors.grey[200],
                              child: ListTile(
                                title: kNotice1,
                                subtitle: kNoticeSubtype1,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 0.75 * SizeConfig.textMultiplier,
                          ),
                          Container(
                            width: 24 * SizeConfig.imageSizeMultiplier,
                            height: 15 * SizeConfig.textMultiplier,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                              onPressed: (){},
                              color: Colors.grey[200],
                              child: ListTile(
                                title: kNotice2,
                                subtitle: kNoticeSubtype2,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 0.75 * SizeConfig.textMultiplier,
                          ),
                          Container(
                            width: 24 * SizeConfig.imageSizeMultiplier,
                            height: 15 * SizeConfig.textMultiplier,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                              onPressed: (){},
                              color: Colors.grey[200],
                              child: ListTile(
                                title: kNotice3,
                                subtitle: kNoticeSubtype3,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 0.75 * SizeConfig.textMultiplier,
                          ),
                          Container(
                            width: 24 * SizeConfig.imageSizeMultiplier,
                            height: 15 * SizeConfig.textMultiplier,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                              onPressed: (){},
                              color: Colors.grey[200],
                              child: ListTile(
                                title: kNotice4,
                                subtitle: kNoticeSubtype4,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 0.75 * SizeConfig.textMultiplier,
                          ),
                          Container(
                            width: 24 * SizeConfig.imageSizeMultiplier,
                            height: 15 * SizeConfig.textMultiplier,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                              onPressed: (){},
                              color: Colors.grey[200],
                              child: ListTile(
                                title: kNotice1,
                                subtitle: kNoticeSubtype1,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 0.75 * SizeConfig.textMultiplier,
                          ),
                          Container(
                              width: 24 * SizeConfig.imageSizeMultiplier,
                              height: 15 * SizeConfig.textMultiplier,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                              onPressed: (){},
                              color: Colors.grey[200],
                              child: ListTile(
                                title: kNotice1,
                                subtitle: kNoticeSubtype1,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 0.75 * SizeConfig.textMultiplier,
                          ),
                          Container(
                            width: 24 * SizeConfig.imageSizeMultiplier,
                            height: 15 * SizeConfig.textMultiplier,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                              onPressed: (){},
                              color: Colors.grey[200],
                              child: ListTile(
                                title: kNotice1,
                                subtitle: kNoticeSubtype1,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 0.75 * SizeConfig.textMultiplier,
                          ),
                          Container(
                            width: 24 * SizeConfig.imageSizeMultiplier,
                            height: 15 * SizeConfig.textMultiplier,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                              onPressed: (){},
                              color: Colors.grey[200],
                              child: ListTile(
                                title: kNotice2,
                                subtitle: kNoticeSubtype2,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 0.75 * SizeConfig.textMultiplier,
                          ),
                          Container(
                            width: 24 * SizeConfig.imageSizeMultiplier,
                            height: 15 * SizeConfig.textMultiplier,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                              onPressed: (){},
                              color: Colors.grey[200],
                              child: ListTile(
                                title: kNotice3,
                                subtitle: kNoticeSubtype3,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 0.75 * SizeConfig.textMultiplier,
                          ),
                          Container(
                            width: 24 * SizeConfig.imageSizeMultiplier,
                            height: 15 * SizeConfig.textMultiplier,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                              onPressed: (){},
                              color: Colors.grey[200],
                              child: ListTile(
                                title: kNotice2,
                                subtitle: kNoticeSubtype2,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 0.75 * SizeConfig.textMultiplier,
                          ),
                          Container(
                            width: 24 * SizeConfig.imageSizeMultiplier,
                            height: 15 * SizeConfig.textMultiplier,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                              onPressed: (){},
                              color: Colors.grey[200],
                              child: ListTile(
                                title: kNotice4,
                                subtitle: kNoticeSubtype4,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 0.75 * SizeConfig.textMultiplier,
                          ),
                        ],
                      ).toList(),
                    ),
                  ),
                );
              }
          );
        }
    );
  }
}

