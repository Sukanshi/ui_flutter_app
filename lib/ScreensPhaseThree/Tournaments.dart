import 'package:flutter/material.dart';
import 'package:game_app/Constants/ConstantTextsButtons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:game_app/Constants/size_config.dart';

class Tournaments extends StatefulWidget {
  static const String id = 'Tournaments';
  @override
  _TournamentsState createState() => _TournamentsState();
}

class _TournamentsState extends State<Tournaments> {

  static final kTournament = Text("Tournaments",
    textAlign: TextAlign.center,
    style: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 3.5 * SizeConfig.textMultiplier,
    ),);

  static final k20 = Text('20 tournaments available',
    style: TextStyle(
        color: Colors.grey,
        fontWeight: FontWeight.w600,
        fontSize: 2.5 * SizeConfig.textMultiplier,
    ),);

  static final kTagline1 = Text('KNOCKOUT GAME // 16 Players',
    style: TextStyle(
        color: Colors.green,
        fontWeight: FontWeight.w700,
        fontSize: 2 * SizeConfig.textMultiplier,
    ),);

  static final kTagline2 = Text('GROUP STAGE GAME // 8 Players',
    style: TextStyle(
        color: Colors.green,
        fontWeight: FontWeight.w700,
        fontSize: 2 * SizeConfig.textMultiplier,
    ),);

  static final k500 = Text('Rs 500',
    style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w700,
        fontSize: 2 * SizeConfig.textMultiplier,
    ),);

  static final kVikramTournament = Text("VIKRAMJEET SINGH TOURNAMENT" ,
    style: TextStyle(
        fontSize: 2 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w600,
        color: Colors.black
    ),);

  static final k14Jan = Text('14 JANUARY | 02:00 PM ONWARDS',
    style: TextStyle(
        fontSize:  2 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w400,
        color: Colors.black
    ),);

  static final kVitulVenue = Text('VENUE',
    style: TextStyle(
        fontSize: 2 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w400,
        color: Colors.grey
    ),);

  static final kPlayArenaTournament = Text('Play Arena - Bengaluru',
    style: TextStyle(
        fontSize: 2 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w600,
        color: Colors.black
    ),);

  static final kVikramProfile = Text('VIKRAMJEET SINGH',
    style: TextStyle(
        fontSize: 2 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w700,
        color: Colors.black
    ),);

  static final kAmateurBlack = Text('AMATEUR',
    style: TextStyle(
      fontSize: 1.5 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),);

  static final kHostedBy = Text('HOSTED BY',
    style: TextStyle(
        fontSize: 2 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w400,
        color: Colors.grey
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
                        backgroundColor: Colors.grey[300],
                        appBar: AppBar(
                          title: Center(
                              child: kTournament),
                          backgroundColor: const Color(0XFF0F33B8),
                        ),
                        body: ListView(
                          children: ListTile.divideTiles(
                            context: context,
                            tiles: [
                              Container(
                                height: 6 * SizeConfig.textMultiplier,
                                width: 100 * SizeConfig.textMultiplier,
                                child: Row(
                                  children: <Widget>[
                                    FlatButton(
                                        onPressed: (){},
                                        child: k20),
                                    Spacer(),
                                    IconButton(onPressed: (){},
                                        hoverColor: const Color(0XFF0F33B8),
                                        icon: Icon(Icons.search,
                                          color: const Color(0XFF0F33B8),),
                                      ),
                                    IconButton(
                                      onPressed: (){},
                                      icon: SvgPicture.asset('images/filter.svg',
                                        color: const Color(0XFF0F33B8),
                                        height: 6 * SizeConfig.textMultiplier,
                                        width: 6 * SizeConfig.textMultiplier,),
                                    ),
                                    IconButton(
                                      onPressed: (){},
                                      icon: Icon(Icons.flash_on,
                                          color: const Color(0XFF0F33B8)),
                                    ),
                                  ],
                                ),
                              ),
                              //----------------First Game Detail---------------
                              Container(
                                color: Colors.white,
                                height: 30 * SizeConfig.textMultiplier,
                                width: 150 * SizeConfig.textMultiplier,
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      height: 4 * SizeConfig.textMultiplier,
                                      width: 100 * SizeConfig.textMultiplier,
                                      child: Row(
                                        children: <Widget>[
                                          FlatButton(
                                              onPressed: (){},
                                              child: Align(
                                                  alignment: Alignment.centerLeft,
                                                  child: kTagline1)),
                                          Spacer(),
                                          FlatButton(
                                              onPressed: (){},
                                              child: Align(
                                                  alignment: Alignment.centerRight,
                                                  child: k500)),
                                        ],
                                      ),
                                      color: const Color(0XFF0F33B8),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            SizedBox(
                                              height: 2 * SizeConfig.textMultiplier,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                                              child: kVikramTournament,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                                              child: k14Jan,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                                              child: kVitulVenue,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                                              child: kPlayArenaTournament,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                                              child: Container(
                                                child: kHostedBy,
                                              ),
                                            ),
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: <Widget>[
                                                Padding(
                                                  padding: EdgeInsets.all(5.0),
                                                  child: Container(
                                                      height: 5 * SizeConfig.textMultiplier,
                                                      width: 10 * SizeConfig.imageSizeMultiplier,
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
                                                //--------VikramJeet Singh------
                                                Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    SizedBox(
                                                      height: 1 * SizeConfig.textMultiplier,
                                                    ),
                                                    kVikramProfile,
                                                    kAmateurBlack,
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Spacer(),
                                        Column(
                                          children: <Widget>[
                                            SizedBox(
                                              height: 2 * SizeConfig.textMultiplier,
                                            ),
                                            Align(
                                                alignment: Alignment.centerRight,
                                                child: Image.asset('images/T.png')),
                                            Align(
                                              alignment: Alignment.centerRight,
                                              child: FlatButton(
                                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                                                    color: Colors.transparent,
                                                    onPressed: (){},
                                                    child: kJoinMatchButton),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 1.5 * SizeConfig.textMultiplier,
                              ),
                              //----------------Second Game Detail--------------
                              Container(
                                color: Colors.white,
                                height: 30 * SizeConfig.textMultiplier,
                                width: 150 * SizeConfig.textMultiplier,
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      height: 4 * SizeConfig.textMultiplier,
                                      width: 100 * SizeConfig.textMultiplier,
                                      child: Row(
                                        children: <Widget>[
                                          FlatButton(
                                              onPressed: (){},
                                              child: Align(
                                                  alignment: Alignment.centerLeft,
                                                  child: kTagline2)),
                                          Spacer(),
                                          FlatButton(
                                              onPressed: (){},
                                              child: Align(
                                                  alignment: Alignment.centerRight,
                                                  child: k500)),
                                        ],
                                      ),
                                      color: const Color(0XFF0F33B8),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            SizedBox(
                                              height: 2 * SizeConfig.textMultiplier,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                                              child: kVikramTournament,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                                              child: k14Jan,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                                              child: kVitulVenue,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                                              child: kPlayArenaTournament,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                                              child: Container(
                                                child: kHostedBy,
                                              ),
                                            ),
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: <Widget>[
                                                Padding(
                                                  padding: EdgeInsets.all(5.0),
                                                  child: Container(
                                                    height: 5 * SizeConfig.textMultiplier,
                                                    width: 10 * SizeConfig.imageSizeMultiplier,
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
                                                //--------VikramJeet Singh------
                                                Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    SizedBox(
                                                      height: 1 * SizeConfig.textMultiplier,
                                                    ),
                                                    kVikramProfile,
                                                    kAmateurBlack,
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Spacer(),
                                        Column(
                                          children: <Widget>[
                                            SizedBox(
                                              height: 2 * SizeConfig.textMultiplier,
                                            ),
                                            Align(
                                                alignment: Alignment.centerRight,
                                                child: Image.asset('images/T.png')),
                                            Align(
                                              alignment: Alignment.centerRight,
                                              child: FlatButton(
                                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                                                  color: Colors.transparent,
                                                  onPressed: (){},
                                                  child: kJoinMatchButton),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 1.5 * SizeConfig.textMultiplier,
                              ),
                              //----------------Third Game Detail---------------
                              Container(
                                color: Colors.white,
                                height: 30 * SizeConfig.textMultiplier,
                                width: 150 * SizeConfig.textMultiplier,
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      height: 4 * SizeConfig.textMultiplier,
                                      width: 100 * SizeConfig.textMultiplier,
                                      child: Row(
                                        children: <Widget>[
                                          FlatButton(
                                              onPressed: (){},
                                              child: Align(
                                                  alignment: Alignment.centerLeft,
                                                  child: kTagline1)),
                                          Spacer(),
                                          FlatButton(
                                              onPressed: (){},
                                              child: Align(
                                                  alignment: Alignment.centerRight,
                                                  child: k500)),
                                        ],
                                      ),
                                      color: const Color(0XFF0F33B8),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            SizedBox(
                                              height: 2 * SizeConfig.textMultiplier,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                                              child: kVikramTournament,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                                              child: k14Jan,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                                              child: kVitulVenue,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                                              child: kPlayArenaTournament,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                                              child: Container(
                                                child: kHostedBy,
                                              ),
                                            ),
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: <Widget>[
                                                Padding(
                                                  padding: EdgeInsets.all(5.0),
                                                  child: Container(
                                                    height: 5 * SizeConfig.textMultiplier,
                                                    width: 10 * SizeConfig.imageSizeMultiplier,
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
                                                //--------VikramJeet Singh------
                                                Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    SizedBox(
                                                      height: 1 * SizeConfig.textMultiplier,
                                                    ),
                                                    kVikramProfile,
                                                    kAmateurBlack,
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Spacer(),
                                        Column(
                                          children: <Widget>[
                                            SizedBox(
                                              height: 2 * SizeConfig.textMultiplier,
                                            ),
                                            Align(
                                                alignment: Alignment.centerRight,
                                                child: Image.asset('images/T.png')),
                                            Align(
                                              alignment: Alignment.centerRight,
                                              child: FlatButton(
                                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                                                  color: Colors.transparent,
                                                  onPressed: (){},
                                                  child: kJoinMatchButton),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 1.5 * SizeConfig.textMultiplier,
                              ),
                              //----------------Fourth Game Detail--------------
                              Container(
                                color: Colors.white,
                                height: 30 * SizeConfig.textMultiplier,
                                width: 150 * SizeConfig.textMultiplier,
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      height: 4 * SizeConfig.textMultiplier,
                                      width: 100 * SizeConfig.textMultiplier,
                                      child: Row(
                                        children: <Widget>[
                                          FlatButton(
                                              onPressed: (){},
                                              child: Align(
                                                  alignment: Alignment.centerLeft,
                                                  child: kTagline2)),
                                          Spacer(),
                                          FlatButton(
                                              onPressed: (){},
                                              child: Align(
                                                  alignment: Alignment.centerRight,
                                                  child: k500)),
                                        ],
                                      ),
                                      color: const Color(0XFF0F33B8),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            SizedBox(
                                              height: 2 * SizeConfig.textMultiplier,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                                              child: kVikramTournament,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                                              child: k14Jan,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                                              child: kVitulVenue,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                                              child: kPlayArenaTournament,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                                              child: Container(
                                                child: kHostedBy,
                                              ),
                                            ),
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: <Widget>[
                                                Padding(
                                                  padding: EdgeInsets.all(5.0),
                                                  child: Container(
                                                    height: 5 * SizeConfig.textMultiplier,
                                                    width: 10 * SizeConfig.imageSizeMultiplier,
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
                                                //--------VikramJeet Singh------
                                                Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    SizedBox(
                                                      height: 1 * SizeConfig.textMultiplier,
                                                    ),
                                                    kVikramProfile,
                                                    kAmateurBlack,
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Spacer(),
                                        Column(
                                          children: <Widget>[
                                            SizedBox(
                                              height: 2 * SizeConfig.textMultiplier,
                                            ),
                                            Align(
                                                alignment: Alignment.centerRight,
                                                child: Image.asset('images/T.png')),
                                            Align(
                                              alignment: Alignment.centerRight,
                                              child: FlatButton(
                                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                                                  color: Colors.transparent,
                                                  onPressed: (){},
                                                  child: kJoinMatchButton),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 1.5 * SizeConfig.textMultiplier,
                              ),
                              //----------------Fifth Game Detail---------------
                              Container(
                                color: Colors.white,
                                height: 30 * SizeConfig.textMultiplier,
                                width: 150 * SizeConfig.textMultiplier,
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      height: 4 * SizeConfig.textMultiplier,
                                      width: 100 * SizeConfig.textMultiplier,
                                      child: Row(
                                        children: <Widget>[
                                          FlatButton(
                                              onPressed: (){},
                                              child: Align(
                                                  alignment: Alignment.centerLeft,
                                                  child: kTagline1)),
                                          Spacer(),
                                          FlatButton(
                                              onPressed: (){},
                                              child: Align(
                                                  alignment: Alignment.centerRight,
                                                  child: k500)),
                                        ],
                                      ),
                                      color: const Color(0XFF0F33B8),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            SizedBox(
                                              height: 2 * SizeConfig.textMultiplier,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                                              child: kVikramTournament,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                                              child: k14Jan,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                                              child: kVitulVenue,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                                              child: kPlayArenaTournament,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                                              child: Container(
                                                child: kHostedBy,
                                              ),
                                            ),
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: <Widget>[
                                                Padding(
                                                  padding: EdgeInsets.all(5.0),
                                                  child: Container(
                                                    height: 5 * SizeConfig.textMultiplier,
                                                    width: 10 * SizeConfig.imageSizeMultiplier,
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
                                                //--------VikramJeet Singh------
                                                Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    SizedBox(
                                                      height: 1 * SizeConfig.textMultiplier,
                                                    ),
                                                    kVikramProfile,
                                                    kAmateurBlack,
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Spacer(),
                                        Column(
                                          children: <Widget>[
                                            SizedBox(
                                              height: 2 * SizeConfig.textMultiplier,
                                            ),
                                            Align(
                                                alignment: Alignment.centerRight,
                                                child: Image.asset('images/T.png')),
                                            Align(
                                              alignment: Alignment.centerRight,
                                              child: FlatButton(
                                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                                                  color: Colors.transparent,
                                                  onPressed: (){},
                                                  child: kJoinMatchButton),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
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
