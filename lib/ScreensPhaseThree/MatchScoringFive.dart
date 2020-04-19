import 'package:flutter/material.dart';
import 'package:game_app/Constants/size_config.dart';

class MatchScoringFive extends StatefulWidget {
  static const String id = 'MatchScoringFive';
  @override
  _MatchScoringFiveState createState() => _MatchScoringFiveState();
}

class _MatchScoringFiveState extends State<MatchScoringFive> {

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
      fontWeight: FontWeight.w400,
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

  static final kText = Text("Please confirm the score with in 1 hour of the"
  " request otherwise it would be invalidated.",
  style: TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.w500,
  fontSize: 2.5 * SizeConfig.textMultiplier,
  ),);

  static final kBestOf3 = Text("BEST OF 3",
  style: TextStyle(
  fontWeight: FontWeight.w600,
  fontSize: 2.5 * SizeConfig.textMultiplier,
  color: const Color(0XFF0F33B8),
  ),);

  static final kWonGame = Text('WON GAME',
  style: TextStyle(
  color: Colors.green,
  fontSize: 2.5 * SizeConfig.textMultiplier,
  fontWeight: FontWeight.w400
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

  static final kAmateurBlack = Text('AMATEUR',
  style: TextStyle(
  fontSize: 1.5 * SizeConfig.textMultiplier,
  fontWeight: FontWeight.w600,
  color: Colors.black,
  ),);

  static final kVAlidate = Text('VALIDATE',
  style: TextStyle(
  fontWeight: FontWeight.w700,
  color: Colors.white,
  fontSize: 2.5 * SizeConfig.textMultiplier,
  ),);

  static final kScore = Text('SCORE',
    style: TextStyle(
      fontWeight: FontWeight.w700,
      color: Colors.white,
      fontSize: 2.5 * SizeConfig.textMultiplier,
    ),);

  static final kMatchScoringText20 = Text("Something doesn\'t seem right?",
    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w400,
      fontSize: 2.5 * SizeConfig.textMultiplier,
    ),);

  static final  kMatchScoringText21 = Text("RESEND UPDATED SCORE TO PLAYERS",
    style: TextStyle(
      color: const Color(0XFF0F33B8),
      fontWeight: FontWeight.w700,
      fontSize: 2.5 * SizeConfig.textMultiplier,
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
                      title: kMatchScoring,
                      backgroundColor: const Color(0XFF0F33B8),
                    ),
                    body: ListView(
                      children: ListTile.divideTiles(
                        context: context,
                        tiles: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              //---------------Container Details----------------
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
                              //-----------------Container Text-----------------
                              SizedBox(
                                height: 2 * SizeConfig.textMultiplier,
                              ),
                              FlatButton(
                                onPressed: (){},
                                child: kText,
                                ),
                              //------------------Score Details-----------------
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
                                      kBestOf3,
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
                              //-------------Save Score Button------------------
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 24.0),
                                height: 8 * SizeConfig.textMultiplier,
                                width: 100 * SizeConfig.imageSizeMultiplier,
                                  child: RaisedButton(
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                                    onPressed: (){},
                                    color: const Color(0XFF0F33B8),
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                            children: <Widget>[
                                              Align(
                                                  alignment: Alignment.centerLeft,
                                                  child: kVAlidate),
                                              Align(
                                                  alignment: Alignment.centerLeft,
                                                  child: kScore),
                                            ],
                                          ),
                                    )
                                  ),
                                ),
                              //----------------------End Text------------------
                              SizedBox(
                                height: 2 * SizeConfig.textMultiplier,
                              ),
                              Center(
                                  child: kMatchScoringText20,
                              ),
                              FlatButton(
                                onPressed: (){},
                                child: Center(
                                  child: kMatchScoringText21,
                                ),
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