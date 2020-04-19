import 'package:flutter/material.dart';
import 'package:game_app/Constants/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MatchScoringSix extends StatefulWidget {
  static const String id = 'MatchScoringSix';
  @override
  _MatchScoringSixState createState() => _MatchScoringSixState();
}

class _MatchScoringSixState extends State<MatchScoringSix> {
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

  static final kMatchScoringText3 = Text('SCORES HAVE BEEN SENT',
    textAlign: TextAlign.center,
    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w500,
      fontSize: 2.5 * SizeConfig.textMultiplier,
    ),);

  static final kMatchScoringText4 = Text('VITUL ',
    textAlign: TextAlign.center,
    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w700,
      fontSize: 2.5 * SizeConfig.textMultiplier,
    ),);

  static final kMatchScoringText5 = Text('FOR CONFIRMATION_',
    textAlign: TextAlign.center,
    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w500,
      fontSize: 2.5 * SizeConfig.textMultiplier,
    ),);

  static final kMatchScoringText6 = Text('Once confirmed, score',
    textAlign: TextAlign.center,
    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w700,
      fontSize: 2.5 * SizeConfig.textMultiplier,
    ),);

  static final kMatchScoringText7 = Text('will be update for the match',
    textAlign: TextAlign.center,
    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w700,
      fontSize: 2.5 * SizeConfig.textMultiplier,
    ),);

  static final kGoToHomepage = Text('GO TO HOMEPAGE',
    style: TextStyle(
        fontWeight: FontWeight.w700,
        color: Colors.white,
        fontSize: 2.5 * SizeConfig.textMultiplier,
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
                              //-----------------Container Text-----------------
                              SizedBox(
                                height: 2 * SizeConfig.textMultiplier,
                              ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 40.0),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                  child: SvgPicture.asset('images/sendicon.svg',
                                          color: Colors.green,
                                          height: 20 * SizeConfig.textMultiplier,
                                          width: 20 * SizeConfig.imageSizeMultiplier,
                                        ),
                                ),
                              ),
                              SizedBox(
                                height: 2 * SizeConfig.textMultiplier,
                              ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 10 * SizeConfig.textMultiplier,),
                                     child: Align(
                                         alignment: Alignment.centerLeft,
                                         child: kMatchScoringText3)),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10 * SizeConfig.textMultiplier,),
                                child: Row(
                                  children: <Widget>[
                                    kMatchScoringText4,
                                    kMatchScoringText5,
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 6 * SizeConfig.textMultiplier,
                              ),
                              Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10 * SizeConfig.textMultiplier,),
                                  child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: kMatchScoringText6)),
                              Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10 * SizeConfig.textMultiplier,),
                                  child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: kMatchScoringText7)),
                              SizedBox(
                                height: 20 * SizeConfig.textMultiplier,
                              ),
                              Container(
                                  height: 8 * SizeConfig.textMultiplier,
                                  width: 80 * SizeConfig.imageSizeMultiplier,
                                  child: RaisedButton(
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                                    onPressed: (){},
                                    color: const Color(0XFF0F33B8),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: kGoToHomepage),
                                          ],
                                        ),
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