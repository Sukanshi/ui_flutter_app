import 'package:flutter/material.dart';
import 'package:game_app/Headbar.dart';
import 'package:game_app/Constants/size_config.dart';

class SportsType extends StatefulWidget {
  static const String id = 'SportsType';
  @override
  _SportsTypeState createState() => _SportsTypeState();
}

class _SportsTypeState extends State<SportsType> {

  static final kNext = Text("NEXT",
    style: TextStyle(
      fontSize: 3 * SizeConfig.textMultiplier,
      color: Colors.white,
      fontWeight: FontWeight.w500,
    ),);

  static final kSportsType = Text('Sports Type',
    textAlign: TextAlign.center,
    style: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 3 * SizeConfig.textMultiplier,
    ),);

  static final kSquash = Text('Squash',
    style: TextStyle(
      fontFamily: "WorkSansSemiBold",
      fontSize: 3 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w700,
      color: const Color(0XFF0F33B8),
    ),);

  static final kTennis = Text('Tennis',
    style: TextStyle(
      fontFamily: "WorkSansSemiBold",
      fontSize: 3 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w700,
      color: const Color(0XFF0F33B8),
    ),);

  static final kTT = Text('Table Tennis',
    style: TextStyle(
      fontFamily: "WorkSansSemiBold",
      fontSize: 3 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w700,
      color: const Color(0XFF0F33B8),
    ),);

  static final kBadminton = Text('Badminton',
    style: TextStyle(
      fontFamily: "WorkSansSemiBold",
      fontSize: 3 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w700,
      color: const Color(0XFF0F33B8),
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
                          title: Center(
                              child: kSportsType),
                          backgroundColor: const Color(0XFF0F33B8),
                        ),
                        //------------ Gridview for different Sports -----------
                        body: GridView.count(
                          crossAxisCount: 2,
                          padding: EdgeInsets.all(20.0),
                          childAspectRatio: 3.0 / 4.0,
                          children: <Widget>[
                            Card(
                                clipBehavior: Clip.hardEdge,
                                child: ClipRect(
                                  clipBehavior: Clip.hardEdge,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      AspectRatio(
                                        aspectRatio: 18.0 / 11.0,
                                        child: Image.asset('images/squash1.png'),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: kSquash,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            Card(
                              clipBehavior: Clip.hardEdge,
                              child: ClipRect(
                                clipBehavior: Clip.hardEdge,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    AspectRatio(
                                      aspectRatio: 18.0 / 11.0,
                                      child: Image.asset('images/table tennis.png'),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: kTT,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Card(
                              clipBehavior: Clip.antiAlias,
                              child: ClipRect(
                                clipBehavior: Clip.antiAlias,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    AspectRatio(
                                      aspectRatio: 18.0 / 11.0,
                                      child: Image.asset('images/badmin.png'),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: kBadminton,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Card(
                              clipBehavior: Clip.hardEdge,
                              child: ClipRect(
                                clipBehavior: Clip.hardEdge,
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    AspectRatio(
                                      aspectRatio: 18.0 / 11.0,
                                      child: Image.asset('images/tennis1.png'),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: kTennis,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        floatingActionButton: Container(
                          height: 7.2 * SizeConfig.textMultiplier,
                          width: 92 * SizeConfig.imageSizeMultiplier,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                            elevation: 10.0,
                            color: const Color(0XFF0F33B8),
                            onPressed: (){},
                            child: kNext,
                          ),
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





