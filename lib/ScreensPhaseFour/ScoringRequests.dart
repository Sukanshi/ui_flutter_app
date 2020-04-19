import 'package:flutter/material.dart';
import 'package:game_app/Constants/size_config.dart';

class ScoringRequests extends StatefulWidget {
  static const String id = 'ScoringRequests';
  @override
  _ScoringRequestsState createState() => _ScoringRequestsState();
}

class _ScoringRequestsState extends State<ScoringRequests> {

  static final kScoring =  Text('Scoring Requests',
  style: TextStyle(
  fontWeight: FontWeight.w700,
  fontSize:  3 * SizeConfig.textMultiplier,
  ),);

  static final kMatch = Text('Match - SQUASH',
    style: TextStyle(
        fontSize: 2.6 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w600,
        color: Colors.black
    ),);

  static final kTime = Text('12 Apr | 02:00 PM - 03:00 PM',
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
        fontSize: 2.5 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w600,
        color: Colors.black
    ),);

  static final kHostedBy = Text('HOSTED BY',
    style: TextStyle(
        fontSize: 2.5 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w500,
        color: Colors.grey
    ),);

  static final kPlayers = Text('PLAYERS (2)',
    style: TextStyle(
        fontSize: 2.5 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w600,
        color: Colors.black
    ),);

  static final kVitul = Text('VITUL',
    style: TextStyle(
        fontSize: 2 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w700,
        color: Colors.grey
    ),);

  static final kAdvanced = Text('ADVANCED',
    style: TextStyle(
      fontSize: 2 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w400,
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
                          backgroundColor: const Color(0XFF0F33B8),
                          title: Center(
                            child: kScoring,
                          ),
                        ),
                        body: ListView(
                          children: ListTile.divideTiles(
                            context: context,
                            tiles: [
                              //----------------Details of Player 1-------------
                              Container(
                                height: 30 * SizeConfig.textMultiplier,
                                width: 100 * SizeConfig.imageSizeMultiplier,
                                child: Card(
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        kMatch,
                                        kTime,
                                        kVenue,
                                        kLocation,
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
                                                  child: kAdvanced,
                                                ),
                                              ],
                                            ),
                                            Spacer(
                                              flex: 1,
                                            ),
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
                                            Spacer(
                                              flex: 2,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
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
