import 'package:flutter/material.dart';
import 'package:game_app/Constants/ConstantTextsButtons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:game_app/ScreensPhaseTwo/ChatScreenOne.dart';
import 'package:game_app/ScreensPhaseThree/Notice.dart';
import 'RackonnectOne.dart';
import 'package:game_app/ScreensPhaseOne/ConnectionFirst.dart';
import 'package:game_app/Constants/size_config.dart';

class ConnectionSecond extends StatefulWidget {
  static const String id = 'ConnectionSecond';
  @override
  _ConnectionSecondState createState() => _ConnectionSecondState();
}

class _ConnectionSecondState extends State<ConnectionSecond> {

  static final kConnection = Text('Connections',
    style: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 3 * SizeConfig.textMultiplier,
    ),);

  static final kConnectionRequests = Text('Connection Requests',
    style: TextStyle(
        fontSize: 2.5 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w700,
        color: Colors.black
    ),);

  static final kAcceptOrDecline = Text('Accept or Decline Requests',
    style: TextStyle(
        fontSize: 2 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w500,
        color: Colors.grey
    ),);

  static final kAnshul = Text('Anshul Srivastava',
    style: TextStyle(
        fontSize: 2 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w600,
        color: Colors.black
    ),);

  static final kYash = Text('Yash Godiyal',
    style: TextStyle(
        fontSize: 2 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w600,
        color: Colors.black
    ),);

  static final kSemiProSmall = Text('Squash . Semi Pro',
    style: TextStyle(
        fontSize: 2 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w400,
        color: const Color(0XFF0F33B8)
    ),);

  static final kPlayArenaTournament = Text('Play Arena - Bengaluru',
    style: TextStyle(
        fontSize: 2 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w600,
        color: Colors.black
    ),);

  static final kLocationSmall = Text('LOCATION',
    style: TextStyle(
        fontSize: 2 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w400,
        color: Colors.grey
    ),);

  static final kAccept = Text('Accept',
    style: TextStyle(
      color: Colors.white,
      fontSize: 1.7  * SizeConfig.textMultiplier,
    ),);

  static final kDecline = Text('Decline',
    style: TextStyle(
      color: Colors.white,
      fontSize: 1.7  * SizeConfig.textMultiplier,
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
                        backgroundColor: Colors.grey[200],
                        appBar: AppBar(
                          title: kConnection,
                          actions: <Widget>[
                            IconButton(
                                icon: SvgPicture.asset('images/friends.svg',
                                  color: Colors.white,
                              height: 3 * SizeConfig.textMultiplier,),
                                onPressed: (){}),
                          ],
                          backgroundColor: const Color(0XFF0F33B8),
                        ),
                        body: ListView(
                          children: ListTile.divideTiles(
                            context: context,
                            tiles: [
                              Stack(
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Expanded(
                                            child: Container(
                                              height: 8 * SizeConfig.textMultiplier,
                                              width: 100 * SizeConfig.imageSizeMultiplier,
                                              child: Center(
                                                child: Card(
                                                  child: Row(
                                                        children: <Widget>[
                                                          FlatButton(
                                                              onPressed: (){},
                                                              child: kConnectionRequests),
                                                          IconButton(
                                                              icon: Icon(Icons.arrow_drop_down),
                                                              color: Colors.black,
                                                              iconSize: 3 * SizeConfig.textMultiplier,
                                                              onPressed: (){}),
                                                        ],
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      //---------------Player Details 1---------
                                      Container(
                                        height: 15 * SizeConfig.textMultiplier,
                                        width: 100 * SizeConfig.imageSizeMultiplier,
                                        child: Center(
                                          child: Card(
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: <Widget>[
                                                Container(
                                                    padding: EdgeInsets.all(3.0),
                                                    height: 12 * SizeConfig.textMultiplier,
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
                                                Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    kAnshul,
                                                    kSemiProSmall,
                                                    kLocationSmall,
                                                    kPlayArenaTournament,
                                                  ],
                                                ),
                                                Row(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: <Widget>[
                                                      Align(
                                                        alignment: Alignment.bottomCenter,
                                                        child: SizedBox(
                                                          height: 3.5 * SizeConfig.textMultiplier,
                                                          width: 19 * SizeConfig.imageSizeMultiplier,
                                                            child: FlatButton(
                                                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                                                                color: const Color(0XFF0F33B8),
                                                                onPressed: (){},
                                                                child: kAccept),
                                                          ),
                                                      ),
                                                      Align(
                                                        alignment: Alignment.bottomCenter,
                                                        child: SizedBox(
                                                          height: 3.5 * SizeConfig.textMultiplier,
                                                          width: 19 * SizeConfig.imageSizeMultiplier,
                                                            child: FlatButton(
                                                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                                                                color: const Color(0XFF0F33B8),
                                                                onPressed: (){},
                                                                child: kDecline),
                                                          ),
                                                      ),
                                                    ],
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      //---------------Player Details 2---------
                                      Container(
                                        height: 15 * SizeConfig.textMultiplier,
                                        width: 100 * SizeConfig.imageSizeMultiplier,
                                        child: Center(
                                          child: Card(
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: <Widget>[
                                                Container(
                                                  padding: EdgeInsets.all(3.0),
                                                  height: 12 * SizeConfig.textMultiplier,
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
                                                Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    kYash,
                                                    kSemiProSmall,
                                                    kLocationSmall,
                                                    kPlayArenaTournament,
                                                  ],
                                                ),
                                                Row(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: <Widget>[
                                                    Align(
                                                      alignment: Alignment.bottomCenter,
                                                      child: SizedBox(
                                                        height: 3.5 * SizeConfig.textMultiplier,
                                                        width: 19 * SizeConfig.imageSizeMultiplier,
                                                        child: FlatButton(
                                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                                                            color: const Color(0XFF0F33B8),
                                                            onPressed: (){},
                                                            child: kAccept),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment: Alignment.bottomCenter,
                                                      child: SizedBox(
                                                        height: 3.5 * SizeConfig.textMultiplier,
                                                        width: 19 * SizeConfig.imageSizeMultiplier,
                                                        child: FlatButton(
                                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                                                            color: const Color(0XFF0F33B8),
                                                            onPressed: (){},
                                                            child: kDecline),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
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