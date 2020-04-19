import 'package:flutter/material.dart';
import 'package:game_app/Constants/size_config.dart';
import 'package:game_app/Constants/ConstantTextsButtons.dart';

class MatchScoringFour extends StatefulWidget {
  static const String id = 'MatchScoringFour';
  @override
  _MatchScoringFourState createState() => _MatchScoringFourState();
}

class _MatchScoringFourState extends State<MatchScoringFour> {
  static final kMatchScoring = Text('MATCH SCORING',
    textAlign: TextAlign.center,
    style: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 3 * SizeConfig.textMultiplier,
    ),);

  static final kSQUASH = Text('SQUASH',
    textAlign: TextAlign.center,
    style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontSize: 2.5 * SizeConfig.textMultiplier,
    ),);

  static final kMatchScoringText1 = Text('Vikramjeet Singh - Vitul',
    textAlign: TextAlign.center,
    style: TextStyle(
      color: Colors.green,
      fontWeight: FontWeight.w600,
      fontSize: 2.5 * SizeConfig.textMultiplier,
    ),);

  static final kMatchScoringText2 = Text('12 JANUARY',
    textAlign: TextAlign.center,
    style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w600,
      fontSize: 2.5 * SizeConfig.textMultiplier,
    ),);

  static final kVitul = Text('VITUL',
    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w700,
      fontSize: 2 * SizeConfig.textMultiplier,
    ),);

  static final kBeginner = Text('BEGINNER',
    style: TextStyle(
      fontSize: 1.5 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),);

  static final kVikramProfile = Text('VIKRAMJEET SINGH',
    style: TextStyle(
        fontSize: 2 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w700,
        color: Colors.black
    ),);

  static final k3 = Text('3',
    style: TextStyle(
        fontSize: 3 * SizeConfig.textMultiplier,
        color: Colors.white,
        fontWeight: FontWeight.w500
    ),);

  static final k0 = Text('0',
    style: TextStyle(
        fontSize: 3 * SizeConfig.textMultiplier,
        color: Colors.white,
        fontWeight: FontWeight.w500
    ),);

  static final kAmateurBlack = Text('AMATEUR',
    style: TextStyle(
      fontSize: 1.5 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),);

  static final kBestOfThree = Text('Best of Three (3)',
    style: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 2.8 * SizeConfig.textMultiplier,
      color: const Color(0XFF0F33B8),
    ),);

  static final kWonGame = Text('WON GAME',
    style: TextStyle(
        color: Colors.green,
        fontSize: 2.5 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w500
    ),);

  static final kMatchScoringText16 = Text('1. Do not put score for each game, instead put over all'
      ' score of your match. example A & B play, A wins by 21-12, 15-21,'
      '21-18 x (wrong way of scroing.',
    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w500,
      fontSize: 2.5 * SizeConfig.textMultiplier,
    ),);

  static final kMatchScoringText17 = Text('2. Scores must be correct as it will be'
      'validated by the opponent',
    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w500,
      fontSize: 2.5 * SizeConfig.textMultiplier,
    ),);

  static final kMatchScoringText18 = Text('3. If the other player doesn\'t accept the score'
      'the have to give a valid reason and the match will not be '
      'updated on leaderboard',
    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w500,
      fontSize: 2.5 * SizeConfig.textMultiplier,
    ),);

  static final kMatchScoringText19 = Text("Scoring Do\'s & Don\'ts",
    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w700,
      fontSize: 3 * SizeConfig.textMultiplier,
    ),);

  static final kSaveScore = Text('SAVE SCORE',
    style: TextStyle(
        fontWeight: FontWeight.w600,
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
                  home: Scaffold(
                    appBar: AppBar(
                      elevation: 0.00,
                      title: Padding(
                          padding: EdgeInsets.fromLTRB(10.0, 20.00, 0.00, 0.00),
                          child: kMatchScoring
                      ),
                      backgroundColor: const Color(0XFF0F33B8),
                    ),
                    body: ListView(
                      children: ListTile.divideTiles(
                        context: context,
                        tiles: [
                          Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(6.0),
                                color: const Color(0XFF0F33B8),
                                height: 12 * SizeConfig.textMultiplier,
                                width: 100 * SizeConfig.imageSizeMultiplier,
                                child: Row(
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Expanded(child: kSQUASH),
                                        Expanded(child: kMatchScoringText1),
                                        Expanded(child: kMatchScoringText2),
                                      ],
                                    ),
                                    Spacer(),
                                    Expanded(
                                        child: Image.asset('images/squash2.png')),
                                  ],
                                ),
                              ),
                              //-------------------Score Details----------------
                              Container(
                                color: Colors.white,
                                height: 42 * SizeConfig.textMultiplier,
                                width: 100 * SizeConfig.imageSizeMultiplier,
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.all(10.0),
                                          child: Container(
                                            height: 10 * SizeConfig.textMultiplier,
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
                                        //-----------VikramJeet Singh-----------
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            kVikramProfile,
                                            kAmateurBlack,
                                          ],
                                        ),
                                        //-------------------Vitul--------------
                                        Spacer(),
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            kVitul,
                                            kBeginner,
                                          ],
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(10.0),
                                          child: Container(
                                            height: 10 * SizeConfig.textMultiplier,
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
                                      ],
                                    ),
                                    Row(children: <Widget>[
                                      Expanded(
                                        child: Container(
                                            margin: const EdgeInsets.only(left: 10.0, right: 50.0),
                                            child: Divider(
                                              color: const Color(0XFF0F33B8),
                                              height: 6 * SizeConfig.textMultiplier,
                                            )),
                                      ),
                                      kBestOfThree,
                                      Expanded(
                                        child: Container(
                                            margin: const EdgeInsets.only(left: 50.0, right: 10.0),
                                            child: Divider(
                                              color: const Color(0XFF0F33B8),
                                              height: 6 * SizeConfig.textMultiplier,
                                            )),
                                      )
                                    ]),
                                    SizedBox(
                                      height: 3 * SizeConfig.textMultiplier,
                                    ),
                                    //------------Add/ Subtract Button----------
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Stack(
                                          children: <Widget>[
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: <Widget>[
                                                SizedBox(
                                                  height: 3.5 * SizeConfig.textMultiplier,
                                                  width: 8 * SizeConfig.imageSizeMultiplier,
                                                  child: FlatButton(
                                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                                                    onPressed: (){},
                                                    color: Colors.grey[300],
                                                    child: Align(
                                                      alignment: Alignment.centerLeft,
                                                      child: Icon(Icons.remove,
                                                        textDirection: TextDirection.rtl,
                                                        color: const Color(0XFF0F33B8),
                                                        size: 2 * SizeConfig.textMultiplier,),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 3.5 * SizeConfig.textMultiplier,
                                                  width: 8 * SizeConfig.imageSizeMultiplier,
                                                  child: FlatButton(
                                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                                                    onPressed: (){},
                                                    color: Colors.grey[300],
                                                    child: Align(
                                                      alignment: Alignment.centerRight,
                                                      child: Icon(Icons.add,
                                                        textDirection: TextDirection.ltr,
                                                        color: const Color(0XFF0F33B8),
                                                        size: 2 * SizeConfig.textMultiplier,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                left: 2 * SizeConfig.textMultiplier,
                                                bottom: 2 * SizeConfig.textMultiplier,),
                                              height: 5 * SizeConfig.textMultiplier,
                                              width: 10 * SizeConfig.imageSizeMultiplier,
                                              child: FloatingActionButton(
                                                elevation: 5.0,
                                                backgroundColor: const Color(0XFF0F33B8),
                                                onPressed: (){},
                                                child: k0,),
                                            ),
                                          ],
                                        ),
                                        VerticalDivider(
                                          width: 37 * SizeConfig.imageSizeMultiplier,
                                        ),
                                        Stack(
                                          children: <Widget>[
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: <Widget>[
                                                SizedBox(
                                                  height: 3.5 * SizeConfig.textMultiplier,
                                                  width: 8 * SizeConfig.imageSizeMultiplier,
                                                  child: FlatButton(
                                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                                                    onPressed: (){},
                                                    color: Colors.grey[300],
                                                    child: Align(
                                                      alignment: Alignment.centerLeft,
                                                      child: Icon(Icons.remove,
                                                        textDirection: TextDirection.rtl,
                                                        color: const Color(0XFF0F33B8),
                                                        size: 2 * SizeConfig.textMultiplier,),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 3.5 * SizeConfig.textMultiplier,
                                                  width: 8 * SizeConfig.imageSizeMultiplier,
                                                  child: FlatButton(
                                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                                                    onPressed: (){},
                                                    color: Colors.grey[300],
                                                    child: Align(
                                                      alignment: Alignment.centerRight,
                                                      child: Icon(Icons.add,
                                                        textDirection: TextDirection.ltr,
                                                        color: const Color(0XFF0F33B8),
                                                        size: 2 * SizeConfig.textMultiplier,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                left: 2 * SizeConfig.textMultiplier,
                                                bottom: 2 * SizeConfig.textMultiplier,),
                                              height: 5 * SizeConfig.textMultiplier,
                                              width: 10 * SizeConfig.imageSizeMultiplier,
                                              child: FloatingActionButton(
                                                  elevation: 5.0,
                                                  backgroundColor: const Color(0XFF0F33B8),
                                                  onPressed: (){},
                                                  child: k3),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: FlatButton(
                                            onPressed: (){},
                                            child: kWonGame)),
                                  ],
                                ),
                              ),
                              //-------------------Instructions-----------------
                              Container(
                                height: 38 * SizeConfig.textMultiplier,
                                width: 100 * SizeConfig.imageSizeMultiplier,
                                child: Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      kMatchScoringText19,
                                      SizedBox(
                                        height: 1 * SizeConfig.textMultiplier,
                                      ),
                                      kMatchScoringText16,
                                      SizedBox(
                                        height: 1 * SizeConfig.textMultiplier,
                                      ),
                                      kMatchScoringText17,
                                      SizedBox(
                                        height: 1 * SizeConfig.textMultiplier,
                                      ),
                                      kMatchScoringText18,
                                    ],
                                  ),
                                ),
                              ),
                              //-----------------Save Score Button--------------
                              Container(
                                height: 8 * SizeConfig.textMultiplier,
                                width: 90 * SizeConfig.imageSizeMultiplier,
                                child: RaisedButton(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                                  onPressed: (){},
                                  color: const Color(0XFF0F33B8),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: kSaveScore),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5 * SizeConfig.textMultiplier,
                              ),
                            ],
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