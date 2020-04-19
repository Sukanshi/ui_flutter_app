import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:game_app/Constants/ConstantTextsButtons.dart';
import '../ScreensPhaseOne/ConnectionFirst.dart';
import 'package:game_app/ScreensPhaseTwo/ChatScreenOne.dart';
import 'package:game_app/ScreensPhaseThree/Notice.dart';
import 'package:game_app/ScreensPhaseTwo/CreateGroup.dart';
import 'package:game_app/ScreensPhaseTwo/CreateMatch.dart';
import 'package:game_app/ScreensPhaseFour/CreateTournament.dart';
import 'package:game_app/Constants/size_config.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class VitulProfileFirst extends StatefulWidget {
  static const String id = 'VitulProfileFirst';
  @override
  _VitulProfileFirstState createState() => _VitulProfileFirstState();
}

class _VitulProfileFirstState extends State<VitulProfileFirst> {

  static final kProfile =  Text('My Profile',
    textAlign: TextAlign.center,
    style: TextStyle(
      fontWeight: FontWeight.w700,
      color: Colors.white,
      fontSize: 3 * SizeConfig.textMultiplier,
    ),);

  static final kSagarProfile = Text('SAGAR JAWLA',
    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontSize: 2.3 * SizeConfig.textMultiplier,
    ),);

  static final kSagar21Y = Text('21 Y',
    style: TextStyle(
      color: Colors.grey,
      fontSize: 2 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w500,
    ),);

  static final kConnect = Text('CONNECT',
    style: TextStyle(
      color: Colors.white,
      fontSize: 1.8 * SizeConfig.textMultiplier,
    ),);

  static final kFoolowedBy = Text('Followed by _gourav, Vikram, _Nikhil + 7 more',
    style: TextStyle(
      color: Colors.black,
      fontSize: 2 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w700,
    ),);

  static final kPro = Text('PRO',
    style: TextStyle(
      color: const Color(0XFF0F33B8),
      fontSize: 2 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w500,
    ),);

  static final kAdvanced = Text('ADVANCED',
    style: TextStyle(
      color: const Color(0XFF0F33B8),
      fontSize: 2 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w500,
    ),);

  static final kProfile07 = Text('07',
    style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w600,
      fontSize: 2.5 * SizeConfig.textMultiplier,
    ),);

  static final kProfileMatchesPlayed = Text('Matches Played',
    style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w600,
      fontSize: 2.5 * SizeConfig.textMultiplier,
    ),);

  static final kProfile53 = Text('53',
    style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w600,
      fontSize: 2.5 * SizeConfig.textMultiplier,
    ),);

  static final kProfileConnections = Text('Connections',
    style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w600,
      fontSize: 2.5 * SizeConfig.textMultiplier,
    ),);

  static final kMyRankings = Text("MY RANKING",
    style: TextStyle(
      color: Colors.black,
      fontSize: 2.5 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w700,
    ),);

  static final kEditGame = Text("EDIT GAME",
    style: TextStyle(
      color: Colors.black,
      fontSize: 2.5 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w700,
    ),);

  static final kSquashProfile = Text('Squash',
    style: TextStyle(
      color: const Color(0XFF0F33B8),
      fontSize: 2.5 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w700,
    ),);

  static final kSquash5 = Text('5',
    style: TextStyle(
      color: const Color(0XFF0F33B8),
      fontSize: 2.5 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w700,
    ),);

  static final kMyPrefences = Text("MY PREFERENCES",
    style: TextStyle(
      color: Colors.black,
      fontSize: 2.5 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w700,
    ),);

  static final kGenderBlack = Text('GENDER',
    style: TextStyle(
        fontSize: 2.5 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w600,
        color: Colors.black
    ),);

  static final kAgeBlack = Text("AGE",
    style: TextStyle(
      color: Colors.black,
      fontSize: 2.5 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w500,
    ),);

  static final kTimeProfile = Text("TIME",
    style: TextStyle(
      color: Colors.black,
      fontSize: 2.5 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w500,
    ),);

  static final kAllPlayers = Text("All Players",
    style: TextStyle(
      color: Colors.white,
      fontSize: 2.2 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w400,
    ),);

  static final k10to65 = Text("10 - 65",
    style: TextStyle(
      color: Colors.white,
      fontSize: 2.2 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w400,
    ),);

  static final kAnytime = Text("Anytime",
    style: TextStyle(
      color: Colors.white,
      fontSize: 2.2 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w400,
    ),);

  static final kMatchHistory = Text("Match History (2)",
    style: TextStyle(
      color: Colors.black,
      fontSize: 2.5 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w700,
    ),);

  static final kShowAll = Text("Show All",
    style: TextStyle(
      color: Colors.black,
      fontSize: 2.5 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w400,
    ),);

  static final kRohan = Text('ROHAN\'S DOUBLES',
    style: TextStyle(
        fontSize: 2.6 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w600,
        color: Colors.black
    ),);

  static final kPlayathon = Text('PLAYATHON - ONE',
    style: TextStyle(
        fontSize: 2.6 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w600,
        color: Colors.black
    ),);

  static final kTime = Text('12 January | 02:00 PM - 03:00 PM',
    style: TextStyle(
        fontSize: 2 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w500,
        color: Colors.grey
    ),);

  static final kTiming = Text('14 February | 02:00 PM - 03:00 PM',
    style: TextStyle(
        fontSize: 2 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w500,
        color: Colors.grey
    ),);

  static final kVenue = Text('VENUE',
    style: TextStyle(
        fontSize: 2 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w600,
        color: Colors.black
    ),);

  static final kLocation = Text('Play Arena - Bengaluru',
    style: TextStyle(
        fontSize: 2.2 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w600,
        color: Colors.black
    ),);

  static final kLoc = Text('Vialyat Ground, Delhi',
    style: TextStyle(
        fontSize: 2.2 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w600,
        color: Colors.black
    ),);

  static final kHostedBy = Text('HOSTED BY',
    style: TextStyle(
        fontSize: 2.2 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w500,
        color: Colors.grey
    ),);

  static final kPlayers = Text('PLAYERS (1)',
    style: TextStyle(
        fontSize: 2.2 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w600,
        color: Colors.black
    ),);

  static final kVikram = Text('VIKRAMJEET SINGH',
    style: TextStyle(
        fontSize: 2 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w700,
        color: Colors.grey
    ),);

  static final kVITUL = Text('VITUL',
    style: TextStyle(
        fontSize: 2 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w700,
        color: Colors.grey
    ),);

  static final kVitul = Text('Vitul',
    style: TextStyle(
      fontSize: 2 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w700,
      color: Colors.green,
    ),);

  static final kAmateur = Text('AMATEUR',
    style: TextStyle(
      fontSize: 2 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w400,
      color: Colors.green,
    ),);

  static final kJoinMatchButton = Text('JOIN MATCH',
    style: TextStyle(
        fontWeight: FontWeight.w700,
        color: const Color(0XFF0F33B8),
        fontSize: 2 * SizeConfig.textMultiplier,
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
                          title: kProfile,
                          actions: <Widget>[
                            IconButton(icon: Icon(Icons.edit),
                                iconSize: 3 * SizeConfig.textMultiplier,
                                onPressed: () {}),
                          ],
                          backgroundColor: const Color(0XFF0F33B8),
                        ),
                        body:ListView(
                          children: ListTile.divideTiles(
                            context: context,
                            tiles: [
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                    //------------- Adding Image ---------------
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                                      child: Row(
                                        children: <Widget>[
                                          Container(
                                            padding: EdgeInsets.all(3.0),
                                            height: 15 * SizeConfig.textMultiplier,
                                            width: 15 * SizeConfig.imageSizeMultiplier,
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
                                          //--------- Added Profile ------------
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              kSagarProfile,
                                              Row(
                                                children: <Widget>[
                                                  kSagar21Y,
                                                  kPro,
                                                ],
                                              ),
                                              SizedBox(
                                                height: 3 * SizeConfig.textMultiplier,
                                                width: 25 * SizeConfig.imageSizeMultiplier,
                                                child: FlatButton(
                                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                                                  color: const Color(0XFF0F33B8),
                                                    onPressed: (){},
                                                    child: kConnect),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    FlatButton(
                                        onPressed: (){},
                                        child: kFoolowedBy),
                                    Container(
                                      height: 7 * SizeConfig.textMultiplier,
                                      width: 100 * SizeConfig.imageSizeMultiplier,
                                      color: const Color(0XFF0F33B8),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Center(
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[
                                                kProfile07,
                                                kProfileMatchesPlayed,
                                              ],
                                            ),
                                          ),
                                          VerticalDivider(
                                            color: Colors.white,
                                          ),
                                          Center(
                                            child: Column (
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[
                                                kProfile53,
                                                kProfileConnections,
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    //--------- Add My Rankings & Game ---------
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        Expanded(
                                          child: FlatButton(
                                              onPressed: (){},
                                              child: kMyRankings),
                                        ),
                                        Expanded(
                                          child: FlatButton(
                                              color: Colors.transparent,
                                              onPressed: (){},
                                              child: kEditGame),
                                        ),
                                      ],
                                    ),
                                    //----------Different Game Cards------------
                                    Card(
                                      child: Container(
                                        width: 100 * SizeConfig.imageSizeMultiplier,
                                        height: 6 * SizeConfig.textMultiplier,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: <Widget>[
                                            FlatButton(
                                                onPressed: (){},
                                                child: kSquashProfile),
                                            Spacer(),
                                            kSquash5,
                                            IconButton(
                                              onPressed: (){},
                                              icon: Icon(Icons.keyboard_arrow_down,
                                                color: Colors.grey,
                                              ),
                                              iconSize: 4 * SizeConfig.textMultiplier,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Card(
                                      child: Container(
                                        width: 100 * SizeConfig.imageSizeMultiplier,
                                        height: 6 * SizeConfig.textMultiplier,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: <Widget>[
                                            FlatButton(
                                                onPressed: (){},
                                                child: kSquashProfile),
                                            Spacer(),
                                            kSquash5,
                                            IconButton(
                                              onPressed: (){},
                                              icon: Icon(Icons.keyboard_arrow_down,
                                                color: Colors.grey,
                                              ),
                                              iconSize: 4 * SizeConfig.textMultiplier,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Card(
                                      child: Container(
                                        width: 100 * SizeConfig.imageSizeMultiplier,
                                        height: 6 * SizeConfig.textMultiplier,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: <Widget>[
                                            FlatButton(
                                                onPressed: (){},
                                                child: kSquashProfile),
                                            Spacer(),
                                            kSquash5,
                                            IconButton(
                                              onPressed: (){},
                                              icon: Icon(Icons.keyboard_arrow_down,
                                                color: Colors.grey,
                                              ),
                                              iconSize: 4 * SizeConfig.textMultiplier,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Card(
                                      child: Container(
                                        width: 100 * SizeConfig.imageSizeMultiplier,
                                        height: 6 * SizeConfig.textMultiplier,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: <Widget>[
                                            FlatButton(
                                                onPressed: (){},
                                                child: kSquashProfile),
                                            Spacer(),
                                            kSquash5,
                                            IconButton(
                                              onPressed: (){},
                                              icon: Icon(Icons.keyboard_arrow_down,
                                                color: Colors.grey,
                                              ),
                                              iconSize: 4 * SizeConfig.textMultiplier,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    //---------My Preference Row----------------
                                    FlatButton(
                                      onPressed: (){},
                                      child: kMyPrefences,
                                    ),
                                    //-----------Gender, Age and Time-----------
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        Expanded(
                                            child: FlatButton(
                                                onPressed: (){},
                                                child: kGenderBlack)),
                                        Expanded(
                                            child: FlatButton(
                                                onPressed: (){},
                                                child: kAgeBlack)),
                                        Expanded(
                                            child: FlatButton(
                                                onPressed: (){},
                                                child: kTimeProfile)),
                                      ],
                                    ),
                                    //-------Boxes for Gender, Age and Time-----
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        RaisedButton(
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                                          elevation: 10.0,
                                          color: const Color(0XFF0F33B8),
                                          onPressed: (){},
                                          child: kAllPlayers,
                                        ),
                                        RaisedButton(
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                                          elevation: 10.0,
                                          color: const Color(0XFF0F33B8),
                                          onPressed: (){},
                                          child: k10to65,
                                        ),
                                        RaisedButton(
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                                          elevation: 10.0,
                                          color: const Color(0XFF0F33B8),
                                          onPressed: (){},
                                          child: kAnytime,
                                        ),
                                      ],
                                    ),
                                    //--------------Match History---------------
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Expanded(
                                            child: FlatButton(
                                                onPressed: (){},
                                                child: kMatchHistory)),
                                        Expanded(
                                            child: FlatButton(
                                                onPressed: (){},
                                                child: kShowAll)),
                                      ],
                                    ),
                                    //------------Details of Player 1 ----------
                                      Container(
                                        height: 25 * SizeConfig.textMultiplier,
                                        width: 100 * SizeConfig.imageSizeMultiplier,
                                        child: Card(
                                          child: Stack(
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.symmetric(horizontal: 15.0),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: <Widget>[
                                                    kRohan,
                                                    kTime,
                                                    kVenue,
                                                    kLocation,
                                                    Stack(
                                                      textDirection: TextDirection.rtl,
                                                      children: <Widget>[
                                                        Row(
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                          children: <Widget>[
                                                            kHostedBy,
                                                            Spacer(),
                                                            kPlayers,
                                                            Spacer(),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: <Widget>[
                                                        Container(
                                                          padding: EdgeInsets.all(5.0),
                                                          width: 7 * SizeConfig.textMultiplier,
                                                          height: 7 * SizeConfig.textMultiplier,
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
                                                        Column(
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: <Widget>[
                                                            Container(
                                                              child: kVikram,
                                                            ),
                                                            Container(
                                                              child: kAdvanced,
                                                            ),
                                                          ],
                                                        ),
                                                        VerticalDivider(
                                                          width: 3 * SizeConfig.imageSizeMultiplier,
                                                        ),
                                                        Container(
                                                          padding: EdgeInsets.all(5.0),
                                                          width: 6 * SizeConfig.textMultiplier,
                                                          height: 6 * SizeConfig.textMultiplier,
                                                          child: RawMaterialButton(
                                                            shape: CircleBorder(),
                                                            fillColor: const Color(0XFF0F33B8),
                                                            elevation: 0.0,
                                                            onPressed: (){},
                                                          ),
                                                        ),
                                                        Container(
                                                          padding: EdgeInsets.all(5.0),
                                                          width: 6 * SizeConfig.textMultiplier,
                                                          height: 6 * SizeConfig.textMultiplier,
                                                          child: RawMaterialButton(
                                                            shape: CircleBorder(),
                                                            fillColor: const Color(0XFF0F33B8),
                                                            elevation: 0.0,
                                                            onPressed: (){},
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.centerRight,
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: <Widget>[
                                                  Image.asset('images/badmin.png',
                                                    height: 10 * SizeConfig.textMultiplier,
                                                    width: 20 * SizeConfig.imageSizeMultiplier,),
                                                    SizedBox(
                                                        height: 5 * SizeConfig.textMultiplier,
                                                        width: 22 * SizeConfig.imageSizeMultiplier,
                                                        child: FlatButton(
                                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                                                            color: Colors.transparent,
                                                            onPressed: (){},
                                                            child: kJoinMatchButton))
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    //--------------Player 2 Details------------
                                      Container(
                                        height: 25 * SizeConfig.textMultiplier,
                                        width: 100 * SizeConfig.imageSizeMultiplier,
                                        child: Card(
                                          child: Stack(
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.symmetric(horizontal: 15.0),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: <Widget>[
                                                    kPlayathon,
                                                    kTiming,
                                                    kVenue,
                                                    kLoc,
                                                    Stack(
                                                      textDirection: TextDirection.rtl,
                                                      children: <Widget>[
                                                        Row(
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                          children: <Widget>[
                                                            kHostedBy,
                                                            Spacer(),
                                                            kPlayers,
                                                            Spacer(),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: <Widget>[
                                                        Container(
                                                          padding: EdgeInsets.all(5.0),
                                                          width: 7 * SizeConfig.textMultiplier,
                                                          height: 7 * SizeConfig.textMultiplier,
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
                                                        Column(
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: <Widget>[
                                                            Container(
                                                              child: kVITUL,
                                                            ),
                                                            Container(
                                                              child: kAdvanced,
                                                            ),
                                                          ],
                                                        ),
                                                        VerticalDivider(
                                                          width: 15 * SizeConfig.imageSizeMultiplier,
                                                        ),
                                                        Container(
                                                          padding: EdgeInsets.all(5.0),
                                                          width: 6 * SizeConfig.textMultiplier,
                                                          height: 6 * SizeConfig.textMultiplier,
                                                          child: RawMaterialButton(
                                                            shape: CircleBorder(),
                                                            fillColor: const Color(0XFF0F33B8),
                                                            elevation: 0.0,
                                                            onPressed: (){},
                                                          ),
                                                        ),
                                                        Container(
                                                          padding: EdgeInsets.all(5.0),
                                                          width: 6 * SizeConfig.textMultiplier,
                                                          height: 6 * SizeConfig.textMultiplier,
                                                          child: RawMaterialButton(
                                                            shape: CircleBorder(),
                                                            fillColor: const Color(0XFF0F33B8),
                                                            elevation: 0.0,
                                                            onPressed: (){},
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.centerRight,
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: <Widget>[
                                                    Image.asset('images/badmin.png',
                                                      height: 10 * SizeConfig.textMultiplier,
                                                      width: 20 * SizeConfig.imageSizeMultiplier,),
                                                    SizedBox(
                                                        height: 5 * SizeConfig.textMultiplier,
                                                        width: 22 * SizeConfig.imageSizeMultiplier,
                                                        child: FlatButton(
                                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                                                            color: Colors.transparent,
                                                            onPressed: (){},
                                                            child: kJoinMatchButton))
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ],
                          ).toList(),
                        ),
                        bottomNavigationBar: BottomAppBar(
                          shape: CircularNotchedRectangle(),
                          notchMargin: 4.0,
                          color: const Color(0XFF0F33B8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Expanded(child: IconButton(icon: Icon(Icons.home),
                                onPressed: (){}, color: Colors.white, iconSize:  4 * SizeConfig.textMultiplier,),),
                              Expanded(child: IconButton(icon: SvgPicture.asset('images/friends.svg', color: Colors.white,
                                height:  4 * SizeConfig.textMultiplier,), onPressed: (){
                                Navigator.pushNamed(context, ConnectionFirst.id);
                              }),),
                              Expanded(child: new Text('')),
                              Expanded(child: IconButton(icon: SvgPicture.asset('images/chat.svg', color: Colors.white,
                                height:  4 * SizeConfig.textMultiplier,), onPressed: (){
                                Navigator.pushNamed(context, ChatScreenOne.id);
                              }),),
                              Expanded(child: IconButton(icon: Icon(Icons.notifications),
                                  onPressed: (){
                                    Navigator.pushNamed(context, Notice.id);
                                  }, color: Colors.white, iconSize:  4 * SizeConfig.textMultiplier),),
                            ],
                          ),
                        ),
                        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
                        floatingActionButton: FloatingActionButton(
                          hoverColor: const Color(0XFF0F33B8),
                          onPressed: (){
                            AlertBoxOne(context);
                          },
                          child: Icon(Icons.add,
                            size: 6 * SizeConfig.textMultiplier,
                            color: Colors.white,),
                          backgroundColor: const Color(0XFF0F33B8),),
                      ),
                    )
                );
              }
          );
        }
    );
  }
}

void AlertBoxOne (BuildContext context){
  var alertDialogue = AlertDialog(
    actions: <Widget>[
      Padding(
        padding: EdgeInsets.fromLTRB(0.00, 200.00, 0.00, 0.00),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.transparent,
              height: 60.0,
              width: 300.0,
              child: RaisedButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                  elevation: 10.0,
                  color: const Color(0XFF0F33B8),
                  onPressed: (){
                    Navigator.pushReplacementNamed(context, CreateMatch.id);
                  },
                  child: kCreateMtch
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Container(
              height: 60.0,
              width: 300.0,
              child: RaisedButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                  elevation: 10.0,
                  color: const Color(0XFF0F33B8),
                  onPressed: (){
                    Navigator.pushReplacementNamed(context, CreateGroup.id);
                  },
                  child: kCreateGrp
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Container(
              height: 60.0,
              width: 300.0,
              child: RaisedButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                  elevation: 10.0,
                  color: const Color(0XFF0F33B8),
                  onPressed: (){
                    Navigator.pushReplacementNamed(context, CreateTournament.id);
                  },
                  child: kCreateTournament
              ),
            ),
          ],
        ),
      ),
    ],
    backgroundColor: Colors.transparent,
  );

  showDialog(
      context: context,
      builder: (BuildContext context){
        return alertDialogue;
      });
}

class Game extends StatelessWidget{
  Game({this.games, this.OnPressed});

  final String games;
  final OnPressed;

  static final kGames = Text('GAMES',
    style: TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.w600,
      fontSize: 2 * SizeConfig.textMultiplier,
    ),);

  static final k00 = Text('0',
    style: TextStyle(
      fontSize: 2 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w600,
      color: Colors.grey,
    ),);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        kGames,
        k00,
      ],
    );
  }
}

class Win extends StatelessWidget{
  Win({this.win, this.OnPressed});

  final String win;
  final OnPressed;

  static final kWins = Text('WINS',
    style: TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.w600,
      fontSize: 2 * SizeConfig.textMultiplier,
    ),);

  static final k00 = Text('0',
    style: TextStyle(
      fontSize: 2 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w600,
      color: Colors.grey,
    ),);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        kWins,
        k00,
      ],
    );
  }
}

class Loss extends StatelessWidget{
  Loss({this.loss, this.OnPressed});

  final String loss;
  final OnPressed;

  static final kLoss = Text('LOSES',
    style: TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.w600,
      fontSize: 2 * SizeConfig.textMultiplier,
    ),);

  static final k00 = Text('0',
    style: TextStyle(
      fontSize: 2 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w600,
      color: Colors.grey,
    ),);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        kLoss,
        k00,
      ],
    );
  }
}

class Winning extends StatelessWidget{
  Winning({this.winning, this.OnPressed});

  final String winning;
  final OnPressed;

  static final kWinnings = Text('WINNING%',
    style: TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.w600,
      fontSize: 2 * SizeConfig.textMultiplier,
    ),);

  static final k00 = Text('0',
    style: TextStyle(
      fontSize: 2 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w600,
      color: Colors.grey,
    ),);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        kWinnings,
        k00,

      ],
    );
  }
}

class Linear extends StatelessWidget{
  Linear({this.Percent, this.Color});

  final Percent;
  final Color;

  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
      width: MediaQuery.of(context).size.width - 250,
      animation: true,
      lineHeight: 5.0,
      animationDuration: 2000,
      percent: Percent,
      linearStrokeCap: LinearStrokeCap.roundAll,
      progressColor: Color,
    );
  }
}
