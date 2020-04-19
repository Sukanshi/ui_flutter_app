import 'package:flutter/material.dart';

import 'package:game_app/Constants/ConstantTextsButtons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'ConnectionFirst.dart';
import 'package:game_app/ScreensPhaseFour/ChatScreenTwo.dart';
import 'package:game_app/Constants/size_config.dart';

class RackonnectTwo extends StatefulWidget {
  static const String id = 'RackonnectTwo';
  @override
  _RackonnectTwoState createState() => _RackonnectTwoState();
}

class _RackonnectTwoState extends State<RackonnectTwo> {

  static final kVitulDouble = Text('VITUL\'S DOUBLES',
    style: TextStyle(
        fontSize: 2.5 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w600,
        color: Colors.black
    ),);

  static final kEveningDouble = Text('EVENING DOUBLES\'S SQUASH',
    style: TextStyle(
        fontSize: 2.5 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w600,
        color: Colors.black
    ),);

  static final kVitulTime = Text('12 FEBRUARY  |  02:00 PM - 03:00 PM',
    style: TextStyle(
      fontSize: 2 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w400,
      color: Colors.grey,
    ),);

  static final kTime = Text('14 FEBRUARY  |  02:00 PM - 03:00 PM',
    style: TextStyle(
      fontSize: 2 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w400,
      color: Colors.grey,
    ),);

  static final kVitulVenue = Text('VENUE',
    style: TextStyle(
        fontSize: 2 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w400,
        color: Colors.grey
    ),);

  static final kVitulGround = Text('Play Arena, Bengaluru',
    style: TextStyle(
        fontSize: 2 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w400,
        color: Colors.black
    ),);

  static final kGround = Text('Vialyat Ground, Delhi',
    style: TextStyle(
        fontSize: 2 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w400,
        color: Colors.black
    ),);

  static final kVitulHost = Text('HOSTED BY',
    style: TextStyle(
        fontSize: 2 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w400,
        color: Colors.grey
    ),);

  static final kVitul = Text('VITUL',
    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w600,
      fontSize: 2 * SizeConfig.textMultiplier,
    ),);

  static final kVitulSemi = Text('SEMI PRO',
    style: TextStyle(
      fontSize: 2 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w400,
      color: Colors.green,
    ),);

  static final kAmateur = Text('AMATEUR',
    style: TextStyle(
      fontSize: 2 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w400,
      color: Colors.green,
    ),);

  static final kConnect = Text('Connect',
    style: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 1.5 * SizeConfig.textMultiplier,
        color: Colors.white
    ),);

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
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
                        backgroundColor: Colors.grey[200],
                        key: _scaffoldKey,
                        body: ListView(
                          children: ListTile.divideTiles(
                            context: context,
                            tiles: [
                              Stack(
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: <Widget>[
                                      //---------------------Search Button------------------------
                                      Padding(
                                        padding: EdgeInsets.all(5.0),
                                        child: Container(
                                          color: Colors.grey[200],
                                          height: 7 * SizeConfig.textMultiplier,
                                          width: 70 * SizeConfig.imageSizeMultiplier,
                                          child: FlatButton(
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                                            color: Colors.white,
                                            onPressed: (){},
                                            child: TextFormField(
                                              decoration: InputDecoration.collapsed(
                                                hintText: '2 Players available ',
                                                hintStyle: TextStyle(
                                                    fontFamily: "WorkSansSemiBold",
                                                    fontSize: 2.5 * SizeConfig.textMultiplier,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w600),
                                              ),
                                              keyboardType: TextInputType.text,
                                            ),
                                          ),
                                        ),
                                      ),
                                      //-----------Demo Player Details----------
                                      Container(
                                        height: 22 * SizeConfig.textMultiplier,
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
                                                    kVitulDouble,
                                                    kVitulTime,
                                                    kVitulVenue,
                                                    kVitulGround,
                                                    kVitulHost,
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
                                                              child: kVitul,
                                                            ),
                                                            Container(
                                                              child: kVitulSemi,
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.bottomRight,
                                                child: Column(
                                                  children: <Widget>[
                                                    Image.asset('images/squash2.png',
                                                      height: 15 * SizeConfig.textMultiplier,
                                                      width: 11 * SizeConfig.imageSizeMultiplier,),
                                                    SizedBox(
                                                      height: 3 * SizeConfig.textMultiplier,
                                                      width: 22 * SizeConfig.imageSizeMultiplier,
                                                      child: FlatButton(
                                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                                                        color: const Color(0XFF0F33B8),
                                                        onPressed: (){},
                                                        child: kConnect,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      //-----------2nd Player Details-----------
                                      Container(
                                        height: 22 * SizeConfig.textMultiplier,
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
                                                    kEveningDouble,
                                                    kTime,
                                                    kVitulVenue,
                                                    kGround,
                                                    kVitulHost,
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
                                                              child: kVitul,
                                                            ),
                                                            Container(
                                                              child: kAmateur,
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.bottomRight,
                                                child: Column(
                                                  children: <Widget>[
                                                    Image.asset('images/squash2.png',
                                                      height: 15 * SizeConfig.textMultiplier,
                                                      width: 11 * SizeConfig.imageSizeMultiplier,),
                                                    SizedBox(
                                                      height: 3 * SizeConfig.textMultiplier,
                                                      width: 22 * SizeConfig.imageSizeMultiplier,
                                                      child: FlatButton(
                                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                                                        color: const Color(0XFF0F33B8),
                                                        onPressed: (){},
                                                        child: kConnect,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
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
                              Expanded(child: IconButton(icon: Icon(Icons.flash_on), onPressed: (){},
                                color: Colors.white, iconSize: 30.0,),),
                              Expanded(child: IconButton(icon: SvgPicture.asset('images/filter.svg', color: Colors.white,
                                height: 25.0,), onPressed: (){}),),
                              Expanded(child: new Text('')),
                              Expanded(child: IconButton(icon: SvgPicture.asset('images/chat.svg', color: Colors.white,
                                height: 30.0,), onPressed: (){}),),
                              Expanded(child: IconButton(icon: Icon(Icons.notifications), onPressed: (){},
                                color: Colors.white, iconSize: 30.0,),),
                            ],
                          ),
                        ),
                        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
                        floatingActionButton: FloatingActionButton(
                          hoverColor: const Color(0XFF0F33B8),
                          onPressed: (){

                          },
                          child: Icon(Icons.add,
                            size: 40.0,
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
