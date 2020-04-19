import 'package:flutter/material.dart';
import 'package:game_app/Constants/size_config.dart';
import 'package:percent_indicator/percent_indicator.dart';

class LeaderBoardTwo extends StatefulWidget {
  static const String id = 'LeaderBoardTwo';
  @override
  _LeaderBoardTwoState createState() => _LeaderBoardTwoState();
}

class _LeaderBoardTwoState extends State<LeaderBoardTwo> {

  static final k00 = Text('0',
    style: TextStyle(
      fontSize: 2 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),);

  static final kMyRankings = Text("MY RANKING",
    style: TextStyle(
      color: Colors.black,
      fontSize: 2.5 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w700,
    ),);

  static final kVikramjeetSingh = Text('VikramJeet Singh',
    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w600,
      fontSize: 2 * SizeConfig.textMultiplier,
    ),);

  static final kAmateurLeaderBoard = Text('Amateur',
    style: TextStyle(
      fontSize: 2 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w700,
      color: const Color(0XFF0F33B8),
    ),);

  static final LeaderBoardStatement1 = Text('You need to win atleast a match to get ranked',
    style: TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.w700,
      fontSize: 2.5 * SizeConfig.textMultiplier,
    ),);

  static final kLeaderBoardText = Text('LEADERBOARD',
    style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 3 * SizeConfig.textMultiplier,
        color: Colors.white
    ),);

  static final kGroupRank = Text("GROUP RANK",
    style: TextStyle(
      color: Colors.black,
      fontSize: 2.5 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w700,
    ),);

  static final kVitul = Text('VITUL',
    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w600,
      fontSize: 2 * SizeConfig.textMultiplier,
    ),);

  static final kRagini = Text('RAGINI',
    style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w600,
      fontSize: 2 * SizeConfig.textMultiplier,
    ),);

  static final kAmateurWhite = Text('Amateur',
    style: TextStyle(
      fontSize: 2 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),);

  static final k1 = Text('1',
    style: TextStyle(
      color: const Color(0XFFFFD700),
      fontSize: 3 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w700,
    ),);

  static final k2 = Text('2',
    style: TextStyle(
      color: const Color(0XFFA7A7AD),
      fontSize: 3 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w700,
    ),);

  static final k3 = Text('3',
    style: TextStyle(
      color: const Color(0XFF804A00),
      fontSize: 3 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w700,
    ),);

  static final k4 = Text('4',
    style: TextStyle(
      color: Colors.white,
      fontSize: 3 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w700,
    ),);

  static final k5 = Text('5',
    style: TextStyle(
      color: const Color(0XFF0F33B8),
      fontSize: 3 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w700,
    ),);

  static final k6 = Text('6',
    style: TextStyle(
      color: Colors.white,
      fontSize: 3 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w700,
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
                  home: SafeArea(
                    bottom: true,
                    right: false,
                    left: false,
                    top: true,
                    child: Scaffold(
                      appBar: AppBar(
                        elevation: 0.00,
                        backgroundColor: const Color(0XFF0F33B8),
                        title: kLeaderBoardText,
                      ),
                      body:  ListView(
                        children: ListTile.divideTiles(
                          context: context,
                          tiles: [
                            //------------------------Data----------------------
                            Stack(
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Container(
                                      height: 45 * SizeConfig.textMultiplier,
                                      width: 100 * SizeConfig.imageSizeMultiplier,
                                      color: Colors.grey[200],
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: <Widget>[
                                          //-------------My Ranking-------------
                                          FlatButton(
                                            onPressed: (){},
                                            child: kMyRankings,
                                          ),
                                          //--------------- Ranking ------------
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: <Widget>[
                                              Container(
                                                padding: EdgeInsets.all(5),
                                                width: 12 * SizeConfig.imageSizeMultiplier,
                                                height: 12 * SizeConfig.textMultiplier,
                                                child: RawMaterialButton(
                                                  shape: CircleBorder(),
                                                  fillColor: Colors.white,
                                                  elevation: 0.0,
                                                  child: Icon(
                                                    Icons.add,
                                                    size: 4 * SizeConfig.textMultiplier,
                                                    color: Colors.blueGrey,
                                                  ),
                                                  onPressed: (){},
                                                ),
                                              ),
                                              //----Vikramjeet SIngh, Amateur---
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: <Widget>[
                                                  kVikramjeetSingh,
                                                  Container(
                                                    child: kAmateurLeaderBoard,
                                                  ),
                                                ],
                                              ),
                                              //------------Games---------------
                                              Game(
                                                OnPressed: (){},
                                              ),
                                              //-------------Wins---------------
                                              Win(
                                                OnPressed: (){},
                                              ),
                                              //-------------Loss---------------
                                              Loss(
                                                OnPressed: (){},
                                              ),
                                              //---------Winning Percent--------
                                              Winning(
                                                OnPressed: (){},
                                              ),
                                            ],
                                          ),
                                          //--------------Percent Tile----------
                                          Row(
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.symmetric(horizontal: 10 * SizeConfig.textMultiplier),
                                                child: Linear(
                                                    Percent: 1.0,
                                                    Color: Colors.white,
                                                  ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 2 * SizeConfig.textMultiplier,
                                          ),
                                          //-------Text for getting ranked------
                                          Center(
                                              child: LeaderBoardStatement1),
                                          Divider(
                                            color: Colors.grey,
                                          ),
                                          //-------------Group Rank-------------
                                          FlatButton(
                                            onPressed: (){},
                                            child: kGroupRank,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 100 * SizeConfig.textMultiplier,
                                      width: 100 * SizeConfig.imageSizeMultiplier,
                                      color: const Color(0XFF0F33B8),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: <Widget>[
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                //--------------------Card Text-----------------
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 25 * SizeConfig.textMultiplier),
                                  child: Center(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: <Widget>[
                                        SizedBox(
                                          height: 10 * SizeConfig.textMultiplier,
                                        ),
                                        Card(
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                                          elevation: 4.0,
                                          child: Column(
                                            children: <Widget>[
                                              Container(
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: <Widget>[
                                                    Container(
                                                      width: 8 * SizeConfig.imageSizeMultiplier,
                                                      height: 8 * SizeConfig.textMultiplier,
                                                      child: RawMaterialButton(
                                                        shape: CircleBorder(),
                                                        fillColor: Colors.grey[300],
                                                        elevation: 0.0,
                                                        child: Icon(
                                                          Icons.add,
                                                          size: 4 * SizeConfig.textMultiplier,
                                                          color: Colors.blueGrey,
                                                        ),
                                                        onPressed: (){},
                                                      ),
                                                    ),
                                                    //------Vitul, Amateur----
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: <Widget>[
                                                        kVitul,
                                                        Container(
                                                          child: kAmateurLeaderBoard,
                                                        ),
                                                      ],
                                                    ),
                                                    //-----------Games--------
                                                    Game(
                                                      OnPressed: (){},
                                                    ),
                                                    //-----------Wins---------
                                                    Win(
                                                      OnPressed: (){},
                                                    ),
                                                    //---------Loss-----------
                                                    Loss(
                                                      OnPressed: (){},
                                                    ),
                                                    //-----Winning Percent----
                                                    Winning(
                                                      OnPressed: (){},
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: <Widget>[
                                                  Expanded(
                                                      child: FlatButton(
                                                        onPressed: (){},
                                                        child: k1,
                                                      )),
                                                  Expanded(
                                                    flex: 6,
                                                    child: Linear(
                                                      Percent: 1.0,
                                                      Color: const Color(0XFF0F33B8),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                //----------------Container Text----------------
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 55 * SizeConfig.textMultiplier),
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                            width: 8 * SizeConfig.imageSizeMultiplier,
                                            height: 8 * SizeConfig.textMultiplier,
                                            child: RawMaterialButton(
                                              shape: CircleBorder(),
                                              fillColor: Colors.white,
                                              elevation: 0.0,
                                              child: Icon(
                                                Icons.add,
                                                size: 4 * SizeConfig.textMultiplier,
                                                color: Colors.blueGrey,
                                              ),
                                              onPressed: (){},
                                            ),
                                          ),
                                          //---------Ragini, Amateur----------
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: <Widget>[
                                              kRagini,
                                              Container(
                                                child: kAmateurWhite,
                                              ),
                                            ],
                                          ),
                                          //---------------Games------------
                                          Game(
                                            OnPressed: (){},
                                          ),
                                          //---------------Wins-------------
                                          Win(
                                            OnPressed: (){},
                                          ),
                                          //---------------Loss-------------
                                          Loss(
                                            OnPressed: (){},
                                          ),
                                          //------------Winning Percent-------
                                          Winning(
                                            OnPressed: (){},
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Expanded(
                                              child: FlatButton(
                                                  onPressed: (){},
                                                  child: k2)),
                                          Expanded(
                                            flex: 6,
                                            child: Linear(
                                              Percent: 1.0,
                                              Color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                //------------------Card Text-------------------
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 60 * SizeConfig.textMultiplier),
                                  child: Center(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: <Widget>[
                                        SizedBox(
                                          height: 10 * SizeConfig.textMultiplier,
                                        ),
                                        Card(
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                                          elevation: 4.0,
                                          child: Column(
                                            children: <Widget>[
                                              Container(
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: <Widget>[
                                                    Container(
                                                      width: 8 * SizeConfig.imageSizeMultiplier,
                                                      height: 8 * SizeConfig.textMultiplier,
                                                      child: RawMaterialButton(
                                                        shape: CircleBorder(),
                                                        fillColor: Colors.grey[300],
                                                        elevation: 0.0,
                                                        child: Icon(
                                                          Icons.add,
                                                          size: 4 * SizeConfig.textMultiplier,
                                                          color: Colors.blueGrey,
                                                        ),
                                                        onPressed: (){},
                                                      ),
                                                    ),
                                                    //------Vitul, Amateur----
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: <Widget>[
                                                        kVitul,
                                                        Container(
                                                          child: kAmateurLeaderBoard,
                                                        ),
                                                      ],
                                                    ),
                                                    //-----------Games--------
                                                    Game(
                                                      OnPressed: (){},
                                                    ),
                                                    //-----------Wins---------
                                                    Win(
                                                      OnPressed: (){},
                                                    ),
                                                    //---------Loss-----------
                                                    Loss(
                                                      OnPressed: (){},
                                                    ),
                                                    //-----Winning Percent----
                                                    Winning(
                                                      OnPressed: (){},
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: <Widget>[
                                                  Expanded(
                                                      child: FlatButton(
                                                        onPressed: (){},
                                                        child: k3,
                                                      )),
                                                  Expanded(
                                                    flex: 6,
                                                    child: Linear(
                                                      Percent: 1.0,
                                                      Color: const Color(0XFF0F33B8),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                //----------------Container Text----------------
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 90 * SizeConfig.textMultiplier),
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                            width: 8 * SizeConfig.imageSizeMultiplier,
                                            height: 8 * SizeConfig.textMultiplier,
                                            child: RawMaterialButton(
                                              shape: CircleBorder(),
                                              fillColor: Colors.white,
                                              elevation: 0.0,
                                              child: Icon(
                                                Icons.add,
                                                size: 4 * SizeConfig.textMultiplier,
                                                color: Colors.blueGrey,
                                              ),
                                              onPressed: (){},
                                            ),
                                          ),
                                          //---------Ragini, Amateur----------
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: <Widget>[
                                              kRagini,
                                              Container(
                                                child: kAmateurWhite,
                                              ),
                                            ],
                                          ),
                                          //---------------Games------------
                                          Game(
                                            OnPressed: (){},
                                          ),
                                          //---------------Wins-------------
                                          Win(
                                            OnPressed: (){},
                                          ),
                                          //---------------Loss-------------
                                          Loss(
                                            OnPressed: (){},
                                          ),
                                          //------------Winning Percent-------
                                          Winning(
                                            OnPressed: (){},
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Expanded(
                                              child: FlatButton(
                                                  onPressed: (){},
                                                  child: k4)),
                                          Expanded(
                                            flex: 6,
                                            child: Linear(
                                              Percent: 1.0,
                                              Color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                //-------------------Card Text------------------
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 95 * SizeConfig.textMultiplier),
                                  child: Center(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: <Widget>[
                                        SizedBox(
                                          height: 10 * SizeConfig.textMultiplier,
                                        ),
                                        Card(
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                                          elevation: 4.0,
                                          child: Column(
                                            children: <Widget>[
                                              Container(
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: <Widget>[
                                                    Container(
                                                      width: 8 * SizeConfig.imageSizeMultiplier,
                                                      height: 8 * SizeConfig.textMultiplier,
                                                      child: RawMaterialButton(
                                                        shape: CircleBorder(),
                                                        fillColor: Colors.grey[300],
                                                        elevation: 0.0,
                                                        child: Icon(
                                                          Icons.add,
                                                          size: 4 * SizeConfig.textMultiplier,
                                                          color: Colors.blueGrey,
                                                        ),
                                                        onPressed: (){},
                                                      ),
                                                    ),
                                                    //------Vitul, Amateur----
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: <Widget>[
                                                        kVitul,
                                                        Container(
                                                          child: kAmateurLeaderBoard,
                                                        ),
                                                      ],
                                                    ),
                                                    //-----------Games--------
                                                    Game(
                                                      OnPressed: (){},
                                                    ),
                                                    //-----------Wins---------
                                                    Win(
                                                      OnPressed: (){},
                                                    ),
                                                    //---------Loss-----------
                                                    Loss(
                                                      OnPressed: (){},
                                                    ),
                                                    //-----Winning Percent----
                                                    Winning(
                                                      OnPressed: (){},
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: <Widget>[
                                                  Expanded(
                                                      child: FlatButton(
                                                        onPressed: (){},
                                                        child: k5,
                                                      )),
                                                  Expanded(
                                                    flex: 6,
                                                    child: Linear(
                                                      Percent: 1.0,
                                                      Color: const Color(0XFF0F33B8),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                //-----------------Container Text---------------
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 125 * SizeConfig.textMultiplier),
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                            width: 8 * SizeConfig.imageSizeMultiplier,
                                            height: 8 * SizeConfig.textMultiplier,
                                            child: RawMaterialButton(
                                              shape: CircleBorder(),
                                              fillColor: Colors.white,
                                              elevation: 0.0,
                                              child: Icon(
                                                Icons.add,
                                                size: 4 * SizeConfig.textMultiplier,
                                                color: Colors.blueGrey,
                                              ),
                                              onPressed: (){},
                                            ),
                                          ),
                                          //---------Ragini, Amateur----------
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: <Widget>[
                                              kRagini,
                                              Container(
                                                child: kAmateurWhite,
                                              ),
                                            ],
                                          ),
                                          //---------------Games------------
                                          Game(
                                            OnPressed: (){},
                                          ),
                                          //---------------Wins-------------
                                          Win(
                                            OnPressed: (){},
                                          ),
                                          //---------------Loss-------------
                                          Loss(
                                            OnPressed: (){},
                                          ),
                                          //------------Winning Percent-------
                                          Winning(
                                            OnPressed: (){},
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Expanded(
                                              child: FlatButton(
                                                  onPressed: (){},
                                                  child: k6)),
                                          Expanded(
                                            flex: 6,
                                            child: Linear(
                                              Percent: 1.0,
                                              Color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ).toList(),
                      ),
                    ),
                  ),
                );
              }
          );
        }
    );
  }
}


class Game extends StatelessWidget{
  Game({this.games, this.OnPressed});

  final String games;
  final OnPressed;

  static final kGames = Text('GAMES',
    style: TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.w600,
      fontSize: 2 * SizeConfig.textMultiplier,
    ),);

  static final k00 = Text('0',
    style: TextStyle(
      fontSize: 2 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w600,
      color: Colors.grey,
    ),);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        kGames,
        k00,
      ],
    );
  }
}

class Win extends StatelessWidget{
  Win({this.win, this.OnPressed});

  final String win;
  final OnPressed;

  static final kWins = Text('WINS',
    style: TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.w600,
      fontSize: 2 * SizeConfig.textMultiplier,
    ),);

  static final k00 = Text('0',
    style: TextStyle(
      fontSize: 2 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w600,
      color: Colors.grey,
    ),);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        kWins,
        k00,
      ],
    );
  }
}

class Loss extends StatelessWidget{
  Loss({this.loss, this.OnPressed});

  final String loss;
  final OnPressed;

  static final kLoss = Text('LOSES',
    style: TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.w600,
      fontSize: 2 * SizeConfig.textMultiplier,
    ),);

  static final k00 = Text('0',
    style: TextStyle(
      fontSize: 2 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w600,
      color: Colors.grey,
    ),);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        kLoss,
        k00,
      ],
    );
  }
}

class Winning extends StatelessWidget{
  Winning({this.winning, this.OnPressed});

  final String winning;
  final OnPressed;

  static final kWinnings = Text('WINNING%',
    style: TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.w600,
      fontSize: 2 * SizeConfig.textMultiplier,
    ),);

  static final k00 = Text('0',
    style: TextStyle(
      fontSize: 2 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w600,
      color: Colors.grey,
    ),);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        kWinnings,
        k00,

      ],
    );
  }
}

class Linear extends StatelessWidget{
  Linear({this.Percent, this.Color});

  final Percent;
  final Color;

  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
      width: MediaQuery.of(context).size.width - 250,
      animation: true,
      lineHeight: 5.0,
      animationDuration: 2000,
      percent: Percent,
      linearStrokeCap: LinearStrokeCap.roundAll,
      progressColor: Color,
    );
  }
}