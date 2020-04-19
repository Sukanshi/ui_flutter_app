import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game_app/Constants/size_config.dart';

class VitulDoubles extends StatefulWidget {
  static const String id = 'VitulDoubles';
  @override
  _VitulDoublesState createState() => _VitulDoublesState();
}

class _VitulDoublesState extends State<VitulDoubles> {

  static final kVitulDouble = Text('VITUL\'S DOUBLES',
    textAlign: TextAlign.center,
      style: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 3 * SizeConfig.textMultiplier,
    ),);

  static final kTennis = Text('TENNIS MATCH',
    style: TextStyle(
        color: Colors.green,
        fontWeight: FontWeight.w700,
        fontSize: 2 * SizeConfig.textMultiplier,
    ),);

  static final kHost = Text('HOSTED BY',
    style: TextStyle(
        color: Colors.green,
        fontWeight: FontWeight.w700,
        fontSize: 2.5 * SizeConfig.textMultiplier,
    ),);

  static final kVitul = Text('VITUL',
        style: TextStyle(
            fontSize: 2 * SizeConfig.textMultiplier,
            fontWeight: FontWeight.w700,
            color: Colors.black
        ),);

  static final kVenue = Text('VENUE',
  style: TextStyle(
  color: Colors.grey[400],
  fontWeight: FontWeight.w700,
  fontSize: 2 * SizeConfig.textMultiplier,
  ),);

  static final kSemiPro =  Text('SEMI PRO - TENNIS',
    style: TextStyle(
      fontSize: 1.7 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w400,
      color: const Color(0XFF0F33B8),
    ),);

  static final kPlayArea = Text('Play Arena, Banglore',
    style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w700,
        fontSize: 2 * SizeConfig.textMultiplier,
    ),);

  static final kTime = Text('TIME',
    style: TextStyle(
        color: Colors.grey[400],
        fontWeight: FontWeight.w700,
        fontSize: 2 * SizeConfig.textMultiplier,
    ),);

  static final k12Jan = Text('12 JANUARY | 02:00 PM - 03:00 PM',
    style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w700,
        fontSize: 2 * SizeConfig.textMultiplier,
    ),);

  static final kPlayers = Text('PLAYERS',
    style: TextStyle(
        color: Colors.grey[400],
        fontWeight: FontWeight.w700,
        fontSize: 2 * SizeConfig.textMultiplier,
    ),);

  static final kJoined = Text('3 JOINED/4|||',
    style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w700,
        fontSize: 2 * SizeConfig.textMultiplier,
    ),);

  static final kNeed = Text('1 NEEDED FOR MATCH',
    style: TextStyle(
        color: Colors.red,
        fontWeight: FontWeight.w700,
        fontSize: 2 * SizeConfig.textMultiplier,
    ),);

  static final kCurrentPlayers = Text('CURRENT PLAYERS',
    style: TextStyle(
        color: Colors.grey[400],
        fontWeight: FontWeight.w700,
        fontSize: 2.5 * SizeConfig.textMultiplier,
    ),);

  static final kVikram = Text('VIKRAMJEET SINGH',
    style: TextStyle(
        fontSize: 2 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w700,
        color: Colors.black
    ),);

  static final kPro = Text('PRO',
    style: TextStyle(
      fontSize: 2 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w400,
      color: const Color(0XFF0F33B8),
    ),);

  static final kRagini = Text('RAGINI',
    style: TextStyle(
        fontSize: 2 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w700,
        color: Colors.black
    ),);

  static final kAmateur = Text('AMATEUR',
    style: TextStyle(
      fontSize: 2 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w400,
      color: const Color(0XFF0F33B8),
    ),);

  static final kJoinMatch = Text('JOIN MATCH',
    style: TextStyle(
        fontWeight: FontWeight.w700,
        color: Colors.white,
        fontSize: 3 * SizeConfig.textMultiplier,
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
                    home: DefaultTabController(
                      length: 3,
                      initialIndex: 0,
                      child: Scaffold(
                        appBar: AppBar(
                          title: kVitulDouble,
                          backgroundColor: const Color(0XFF0F33B8),
                        ),
                        body: ListView(
                          children: ListTile.divideTiles(
                            context: context,
                            tiles: [
                              SizedBox(
                                height: 3 * SizeConfig.textMultiplier,
                              ),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    //-----------Tennis Match Container---------
                                    Container(
                                      height: 6 * SizeConfig.textMultiplier,
                                      width: 100 * SizeConfig.imageSizeMultiplier,
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: FlatButton(
                                          onPressed: (){},
                                          child: kTennis),
                                      ),
                                      color: const Color(0XFF0F33B8),
                                    ),
                                    //------------------Hosting-----------------
                                    FlatButton(
                                      onPressed: (){},
                                      child: kHost,),
                                    //----Rounded Image with specification------
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                                          child: Container(
                                            height: 10 * SizeConfig.textMultiplier,
                                            width: 12 * SizeConfig.imageSizeMultiplier,
                                            child: RawMaterialButton(
                                              shape: CircleBorder(),
                                              fillColor: const Color(0XFFECECEC),
                                              elevation: 0.0,
                                              child: Icon(
                                                Icons.add,
                                                size: 5 * SizeConfig.textMultiplier,
                                                color: Colors.blueGrey,
                                              ),
                                              onPressed: (){},
                                            ),
                                          ),
                                        ),
                                        //----------Image Specifications--------
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                                child: Align(
                                                    alignment: Alignment.centerLeft,
                                                    child: kVitul),
                                              ),
                                            Container(
                                                child: kSemiPro,
                                              ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(horizontal: 4 * SizeConfig.textMultiplier),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: <Widget>[
                                          kVenue,
                                          kPlayArea,
                                          kTime,
                                          k12Jan,
                                          kPlayers,
                                          Row(
                                            children: <Widget>[
                                              kJoined,
                                              kNeed,
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    FlatButton(
                                        onPressed: (){},
                                        child: kCurrentPlayers),
                                    Row(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                                              child: Container(
                                                height: 10 * SizeConfig.textMultiplier,
                                                width: 12 * SizeConfig.imageSizeMultiplier,
                                                child: RawMaterialButton(
                                                  shape: CircleBorder(),
                                                  fillColor: const Color(0XFFECECEC),
                                                  elevation: 0.0,
                                                  child: Icon(
                                                    Icons.add,
                                                    size: 3 * SizeConfig.textMultiplier,
                                                    color: Colors.blueGrey,
                                                  ),
                                                  onPressed: (){},
                                                ),
                                              ),
                                            ),
                                            //-------Image Specifications-------
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Container(
                                                  child: Align(
                                                      alignment: Alignment.centerLeft,
                                                      child: kRagini),
                                                ),
                                                Container(
                                                  child: kAmateur,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                                              child: Container(
                                                height: 10 * SizeConfig.textMultiplier,
                                                width: 12 * SizeConfig.imageSizeMultiplier,
                                                child: RawMaterialButton(
                                                  shape: CircleBorder(),
                                                  fillColor: const Color(0XFFECECEC),
                                                  elevation: 0.0,
                                                  child: Icon(
                                                    Icons.add,
                                                    size: 3 * SizeConfig.textMultiplier,
                                                    color: Colors.blueGrey,
                                                  ),
                                                  onPressed: (){},
                                                ),
                                              ),
                                            ),
                                            //--------Image Specifications------
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Container(
                                                  child: Align(
                                                      alignment: Alignment.centerLeft,
                                                      child: kVikram),
                                                ),
                                                Container(
                                                  child: kPro,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                                          child: Container(
                                            height: 10 * SizeConfig.textMultiplier,
                                            width: 12 * SizeConfig.imageSizeMultiplier,
                                            child: RawMaterialButton(
                                              shape: CircleBorder(),
                                              fillColor: const Color(0XFFECECEC),
                                              elevation: 0.0,
                                              child: Icon(
                                                Icons.add,
                                                size: 3 * SizeConfig.textMultiplier,
                                                color: Colors.blueGrey,
                                              ),
                                              onPressed: (){},
                                            ),
                                          ),
                                        ),
                                        //----------Image Specifications--------
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              child: Align(
                                                  alignment: Alignment.centerLeft,
                                                  child: kVitul),
                                            ),
                                            Container(
                                              child: kSemiPro,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 8 * SizeConfig.textMultiplier,
                                    ),
                                    Container(
                                      height: 8 * SizeConfig.textMultiplier,
                                      width: 100 * SizeConfig.imageSizeMultiplier,
                                      child: RaisedButton(
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                                        elevation: 10.0,
                                        color: const Color(0XFF0F33B8),
                                        onPressed: (){},
                                        child: kJoinMatch,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4 * SizeConfig.textMultiplier,
                                    ),
                                  ],
                                ),
                            ],
                          ).toList(),
                        ),
                      ),
                    )
                );
              }
          );
        }
    );
  }
}
