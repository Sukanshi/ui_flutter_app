import 'package:flutter/material.dart';
import 'package:game_app/Constants/size_config.dart';

class MatchScoringOne extends StatefulWidget {
  static const String id = 'MatchScoringOne';
  @override
  _MatchScoringOneState createState() => _MatchScoringOneState();
}
class _MatchScoringOneState extends State<MatchScoringOne> {

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

  static final kMatchScoringText13 = Text('MATCH TIME',
    textAlign: TextAlign.center,
    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w600,
      fontSize: 2.5 * SizeConfig.textMultiplier,
    ),);

  static final k02pmto03pm = Text('02:00 PM - 03:00 PM',
    textAlign: TextAlign.center,
    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w600,
      fontSize: 3 * SizeConfig.textMultiplier,
    ),);

  static final kMatchScoringText14 = Text('You can start scoring once the',
    textAlign: TextAlign.center,
    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w400,
      fontSize: 2.5 * SizeConfig.textMultiplier,
    ),);

  static final kMatchScoringText15 = Text('game is over',
    textAlign: TextAlign.center,
    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w400,
      fontSize: 2.5 * SizeConfig.textMultiplier,
    ),);

  static final kStartScoring = Text('START SCORING',
    style: TextStyle(
        fontWeight: FontWeight.w600,
        color: Colors.white,
        fontSize: 2.5 * SizeConfig.textMultiplier,
    ),);

  static final kMatchScoringText11 = Text('02:30m left',
    style: TextStyle(
        fontWeight: FontWeight.w400,
        color: Colors.white,
        fontSize: 3 * SizeConfig.textMultiplier,
    ),);

  static final kMatchScoringText12 = Text("PLAYER DIDN\'T TURN UP",
    style: TextStyle(
        fontWeight: FontWeight.w600,
        color: Colors.red,
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
                      title: kMatchScoring,
                      backgroundColor: const Color(0XFF0F33B8),
                    ),
                    body: ListView(
                      children: ListTile.divideTiles(
                        context: context,
                        tiles: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                color: const Color(0XFF0F33B8),
                                height: 12 * SizeConfig.textMultiplier,
                                width: 100 * SizeConfig.imageSizeMultiplier,
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.all(12.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Expanded(child: kSQUASH),
                                          Expanded(child: kMatchScoringText1),
                                          Expanded(child: kMatchScoringText2),
                                        ],
                                      ),
                                    ),
                                    Spacer(),
                                    Expanded(
                                        child: Image.asset('images/squash2.png')),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 30 * SizeConfig.textMultiplier,
                              ),
                              Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 40.0),
                                  child: kMatchScoringText13),
                              Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 40.0),
                                  child: k02pmto03pm),
                              SizedBox(
                                height: 3 * SizeConfig.textMultiplier,
                              ),
                              Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 40.0),
                                  child: kMatchScoringText14),
                              Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 40.0),
                                  child: kMatchScoringText15),
                              SizedBox(
                                height: 5 * SizeConfig.textMultiplier,
                              ),
                              Center(
                                child: Container(
                                    height: 8 * SizeConfig.textMultiplier,
                                    width: 90 * SizeConfig.imageSizeMultiplier,
                                    child: RaisedButton(
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                                      onPressed: (){},
                                      color: const Color(0XFF0F33B8),
                                      child: Row(
                                        children: <Widget>[
                                          Expanded(
                                            flex: 2,
                                              child: kStartScoring,
                                          ),
                                          Expanded(
                                              child: kMatchScoringText11),
                                        ],
                                      ),
                                    ),
                                  ),
                              ),
                              SizedBox(
                                height: 2 * SizeConfig.textMultiplier,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 50.0),
                                child: kMatchScoringText12,
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