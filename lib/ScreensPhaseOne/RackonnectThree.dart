import 'package:flutter/material.dart';

import 'package:game_app/Constants/ConstantTextsButtons.dart';
import 'package:game_app/ScreensPhaseFour/ChatScreenTwo.dart';
import 'package:game_app/ScreensPhaseFour/CreateTournament.dart';
import 'package:game_app/ScreensPhaseTwo/CreateGroup.dart';
import 'package:game_app/ScreensPhaseTwo/CreateMatch.dart';
import 'package:game_app/ScreensPhaseThree/Notice.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'ConnectionFirst.dart';
import 'package:game_app/Constants/size_config.dart';

class RackonnectThree extends StatefulWidget {
  static const String id = 'RackonnectThree';
  @override
  _RackonnectThreeState createState() => _RackonnectThreeState();
}

class _RackonnectThreeState extends State<RackonnectThree> {

  static final kDemoDataSmall = Text('Demo data',
    style: TextStyle(
        fontSize: 2 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w600,
        color: Colors.black
    ),);

  static final kVishanka = Text('VISHANKA SINGH',
    style: TextStyle(
        fontSize: 2 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w600,
        color: Colors.black
    ),);

  static final kRohit = Text('ROHIT KUMAR',
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

  static final kPending = Text('Pending',
    style: TextStyle(
      color: Colors.white,
      fontSize: 1.7  * SizeConfig.textMultiplier,
    ),);

  static final kSuggest = Text('Suggested',
    style: TextStyle(
        fontSize: 2.5 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w600,
        color: Colors.black
    ),);

  static final kSeeAll = Text('See All',
    style: TextStyle(
        fontSize: 2.5 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w600,
        color: Colors.black
    ),);

  static final kRoshini = Text('ROSHINI',
    style: TextStyle(
      fontFamily: "WorkSansSemiBold",
      fontSize: 2.2 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),);

  static final kVitul = Text('VITUL',
    style: TextStyle(
      fontFamily: "WorkSansSemiBold",
      fontSize: 2.2 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),);

  static final kGaurav = Text('GAURAV',
    style: TextStyle(
      fontFamily: "WorkSansSemiBold",
      fontSize: 2.2 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),);

  static final kFollow = Text('Follow',
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
                                                  hintText: 'Search for players',
                                                  hintStyle: TextStyle(
                                                    fontFamily: "WorkSansSemiBold",
                                                    fontSize: 2.5 * SizeConfig.textMultiplier,
                                                    color: Colors.grey,),
                                                ),
                                                keyboardType: TextInputType.text,
                                              ),
                                            ),
                                          ),
                                      ),
                                      //---------------Player Details-----------
                                      Container(
                                        height: 15 * SizeConfig.textMultiplier,
                                        width: 100 * SizeConfig.imageSizeMultiplier,
                                        child: Center(
                                          child: Card(
                                            child: Stack(
                                              children: <Widget>[
                                                Row(
                                                  children: <Widget>[
                                                    Padding(
                                                      padding: EdgeInsets.all(10.0),
                                                      child: Container(
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
                                                    ),
                                                    Column(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: <Widget>[
                                                        kDemoDataSmall,
                                                        kSemiProSmall,
                                                        kLocationSmall,
                                                        kPlayArenaTournament,
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                Align(
                                                  alignment: Alignment.centerRight,
                                                  child: Column(
                                                    children: <Widget>[
                                                      Image.asset('images/squash2.png',
                                                        height: 9 * SizeConfig.textMultiplier,
                                                        width: 9 * SizeConfig.imageSizeMultiplier,),
                                                      SizedBox(
                                                        height: 3 * SizeConfig.textMultiplier,
                                                        width: 22 * SizeConfig.imageSizeMultiplier,
                                                        child: FlatButton(
                                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                                                          color: const Color(0XFF0F33B8),
                                                          onPressed: (){},
                                                          child: kPending,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      //--------------Player 2 Details----------
                                      Container(
                                        height: 15 * SizeConfig.textMultiplier,
                                        width: 100 * SizeConfig.imageSizeMultiplier,
                                        child: Center(
                                          child: Card(
                                            child: Stack(
                                              children: <Widget>[
                                                Row(
                                                  children: <Widget>[
                                                    Padding(
                                                      padding: EdgeInsets.all(10.0),
                                                      child: Container(
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
                                                    ),
                                                    Column(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: <Widget>[
                                                        kVishanka,
                                                        kSemiProSmall,
                                                        kLocationSmall,
                                                        kPlayArenaTournament,
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                Align(
                                                  alignment: Alignment.centerRight,
                                                  child: Column(
                                                    children: <Widget>[
                                                      Image.asset('images/squash2.png',
                                                        height: 9 * SizeConfig.textMultiplier,
                                                        width: 9 * SizeConfig.imageSizeMultiplier,),
                                                      SizedBox(
                                                        height: 3 * SizeConfig.textMultiplier,
                                                        width: 22 * SizeConfig.imageSizeMultiplier,
                                                        child: FlatButton(
                                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                                                          color: const Color(0XFF0F33B8),
                                                          onPressed: (){},
                                                          child: kPending,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      //-----------Suggest, See All-------------
                                      Row(
                                        children: <Widget>[
                                          //---------------Age------------------
                                         FlatButton(
                                             onPressed: (){},
                                             child: kSuggest),
                                          Spacer(),
                                          //--------------10-65-----------------
                                          FlatButton(
                                              onPressed: (){},
                                              child: kSeeAll),
                                        ],
                                      ),
                                      //---------------3 Card Players-----------
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: <Widget>[
                                          //------------Roshini Card -----------
                                           Container(
                                                height: 25 * SizeConfig.textMultiplier,
                                                width: 28 * SizeConfig.imageSizeMultiplier,
                                                color: Colors.transparent,
                                                child: Card(
                                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                                                  elevation: 5.0,
                                                  clipBehavior: Clip.hardEdge,
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: <Widget>[
                                                      AspectRatio(
                                                        aspectRatio: 16.0 / 11.0,
                                                        child: Image.asset('assets/diamond.png'),
                                                      ),
                                                      Align(
                                                        alignment: Alignment.bottomCenter,
                                                        child: Column(
                                                          children: <Widget>[
                                                            kRoshini,
                                                            SizedBox(
                                                              height: 3 * SizeConfig.textMultiplier,
                                                              width: 18 * SizeConfig.imageSizeMultiplier,
                                                              child: FlatButton(
                                                                  color: const Color(0XFF0F33B8),
                                                                  onPressed: (){},
                                                                  child: kFollow),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                          //------------Vitul Card--------------
                                          Container(
                                            height: 25 * SizeConfig.textMultiplier,
                                            width: 28 * SizeConfig.imageSizeMultiplier,
                                            color: Colors.transparent,
                                            child: Card(
                                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                                              elevation: 5.0,
                                              clipBehavior: Clip.hardEdge,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  AspectRatio(
                                                    aspectRatio: 16.0 / 11.0,
                                                    child: Image.asset('assets/diamond.png'),
                                                  ),
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                    children: <Widget>[
                                                      Center(
                                                          child: kVitul
                                                      ),
                                                      SizedBox(
                                                        height: 3 * SizeConfig.textMultiplier,
                                                        width: 18 * SizeConfig.imageSizeMultiplier,
                                                        child: FlatButton(
                                                            color: const Color(0XFF0F33B8),
                                                            onPressed: (){},
                                                            child: kFollow),
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          //------------Gaurav Card-------------
                                          Container(
                                            height: 25 * SizeConfig.textMultiplier,
                                            width: 28 * SizeConfig.imageSizeMultiplier,
                                            color: Colors.transparent,
                                            child: Card(
                                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                                              elevation: 5.0,
                                              clipBehavior: Clip.hardEdge,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  AspectRatio(
                                                    aspectRatio: 16.0 / 11.0,
                                                    child: Image.asset('assets/diamond.png'),
                                                  ),
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                    children: <Widget>[
                                                      Center(
                                                          child: kGaurav,
                                                      ),
                                                      SizedBox(
                                                        height: 3 * SizeConfig.textMultiplier,
                                                        width: 18 * SizeConfig.imageSizeMultiplier,
                                                        child: FlatButton(
                                                            color: const Color(0XFF0F33B8),
                                                            onPressed: (){},
                                                            child: kFollow),
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 2 * SizeConfig.textMultiplier,
                                      ),
                                      //--------------Player 3 Details----------
                                      Container(
                                        height: 15 * SizeConfig.textMultiplier,
                                        width: 100 * SizeConfig.imageSizeMultiplier,
                                        child: Center(
                                          child: Card(
                                            child: Stack(
                                              children: <Widget>[
                                                Row(
                                                  children: <Widget>[
                                                    Padding(
                                                      padding: EdgeInsets.all(10.0),
                                                      child: Container(
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
                                                    ),
                                                    Column(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: <Widget>[
                                                        kRohit,
                                                        kSemiProSmall,
                                                        kLocationSmall,
                                                        kPlayArenaTournament,
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                Align(
                                                  alignment: Alignment.centerRight,
                                                  child: Column(
                                                    children: <Widget>[
                                                      Image.asset('images/squash2.png',
                                                        height: 9 * SizeConfig.textMultiplier,
                                                        width: 9 * SizeConfig.imageSizeMultiplier,),
                                                      SizedBox(
                                                        height: 3 * SizeConfig.textMultiplier,
                                                        width: 22 * SizeConfig.imageSizeMultiplier,
                                                        child: FlatButton(
                                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                                                          color: const Color(0XFF0F33B8),
                                                          onPressed: (){},
                                                          child: kPending,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 2 * SizeConfig.textMultiplier,
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
                              Expanded(child: IconButton(icon: Icon(Icons.home),
                                onPressed: (){
                                }, color: Colors.white, iconSize:  4 * SizeConfig.textMultiplier,),),
                              Expanded(child: IconButton(icon: SvgPicture.asset('images/friends.svg', color: Colors.white,
                                height:  4 * SizeConfig.textMultiplier,), onPressed: (){
                                Navigator.pushNamed(context, ConnectionFirst.id);
                              }),),
                              Expanded(child: new Text('')),
                              Expanded(child: IconButton(icon: SvgPicture.asset('images/chat.svg', color: Colors.white,
                                height:  4 * SizeConfig.textMultiplier,), onPressed: (){
                                Navigator.pushNamed(context, ChatScreenTwo.id);
                              }),),
                              Expanded(child: IconButton(icon: Icon(Icons.notifications),
                                onPressed: (){
                                  Navigator.pushReplacementNamed(context, Notice.id);
                                }, color: Colors.white, iconSize:  4 * SizeConfig.textMultiplier,),),
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
