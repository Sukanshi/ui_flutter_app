import 'package:flutter/material.dart';
import 'package:game_app/Constants/ConstantTextsButtons.dart';
import 'package:game_app/ScreensPhaseFour/LeaderBoardOne.dart';
import 'package:game_app/ScreensPhaseFour/LeaderBoardTwo.dart';
import 'package:game_app/ScreensPhaseOne/RackonnectOne.dart';
import 'package:game_app/ScreensPhaseOne/RackonnectTwo.dart';
import 'package:game_app/ScreensPhaseThree/MatchHistory.dart';
import 'package:game_app/ScreensPhaseThree/Settings.dart';
import 'package:game_app/ScreensPhaseThree/Tournaments.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:game_app/ScreensPhaseTwo/MyProfileFirst.dart';
import 'ScreensPhaseOne/RackonnectThree.dart';
import 'ScreensPhaseOne/ConnectionFirst.dart';
import 'package:game_app/Constants/size_config.dart';

class Headbar extends StatefulWidget {
  static const String id = 'Headbar';
  @override
  _HeadbarState createState() => _HeadbarState();
}

class _HeadbarState extends State<Headbar> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  static final kRac = Text('RAC',
    style: TextStyle(
        fontSize: 5.06 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w700,
        color: Colors.white
    ),
  );

  static final kKonnect = Text('KONNECT',
    style: TextStyle(
      fontSize: 5.06 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w700,
      color: const Color(0XFF32CD32),
    ),
  );

  static final kSettings = Text('Settings',
    style: TextStyle(
        fontSize: 22.0,
        fontWeight: FontWeight.w700,
        color: Colors.grey
    ),);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: LayoutBuilder(
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
                          key: _scaffoldKey,
                          drawer: Drawer(
                            child: ListView(
                              children: <Widget>[
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                                      child: Container(
                                        width: 80.0,
                                        height: 80.0,
                                        child: RawMaterialButton(
                                          shape: CircleBorder(),
                                          fillColor: const Color(0XFFECECEC),
                                          elevation: 0.0,
                                          child: Icon(
                                            Icons.add,
                                            size: 50.0,
                                            color: Colors.blueGrey,
                                          ),
                                          onPressed: (){},
                                        ),),
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(5.0, 40.0, 0.00, 0.00),
                                          child: kSagar,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(5.00, 5.0, 0.00, 0.00),
                                          child: k20Y,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(5.0, 8.0, 0.00, 0.00),
                                          child: SizedBox(
                                            height: 35.0,
                                            width: 155.0,
                                            child: RaisedButton(
                                              shape: RoundedRectangleBorder(),
                                              elevation: 0.00,
                                              color: const Color(0XFFECECEC),
                                              onPressed: (){
                                                Navigator.pushNamed(context, MyProfileFirst.id);
                                              },
                                              child: kProfile,),
                                          ),
                                        ),
                                        Row(
                                          children: <Widget>[
                                            IconButton(icon: Icon(Icons.save_alt, size: 18.0,),
                                              onPressed: (){}, color: const Color(0XFF0F33B8),),
                                            kPointSystem,
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                Divider(
                                  color: Colors.grey[400],
                                ),
                                InkWell(
                                  onTap: (){
                                    Navigator.pushNamed(context, MatchHistory.id);
                                  },
                                  child: ListTile(
                                    title: kDrawerMatches,
                                    leading: IconButton(
                                        onPressed: (){
                                          Navigator.pushNamed(context, MatchHistory.id);
                                        },
                                        icon: SvgPicture.asset('images/matches.svg',
                                          height: 25.0, width: 15.0,)),
                                  ),
                                ),
                                InkWell(
                                  onTap: (){
                                    Navigator.pushNamed(context, LeaderBoardTwo.id);
                                  },
                                  child: ListTile(
                                    title: kDrawerLeadership,
                                    leading: IconButton(
                                        onPressed: (){
                                          Navigator.pushNamed(context, LeaderBoardTwo.id);
                                        },
                                        icon: SvgPicture.asset('images/groups.svg',
                                          height: 25.0, width: 15.0,)),
                                  ),
                                ),
                                InkWell(
                                  onTap: (){
                                    Navigator.pushNamed(context, LeaderBoardOne.id);
                                  },
                                  child: ListTile(
                                    title: kDrawerGroups,
                                    leading: IconButton(
                                        onPressed: (){
                                          Navigator.pushNamed(context, LeaderBoardOne.id);
                                        },
                                        icon: SvgPicture.asset('images/groups.svg',
                                          height: 25.0, width: 15.0,)),
                                  ),
                                ),
                                InkWell(
                                  onTap: (){
                                    Navigator.pushNamed(context, Tournaments.id);
                                  },
                                  child: ListTile(
                                    title: kDrawerPastTournaments,
                                    leading: IconButton(
                                      onPressed: (){
                                        Navigator.pushNamed(context, Tournaments.id);
                                      },
                                      icon: SvgPicture.asset('images/matches.svg',
                                        height: 25.0, width: 15.0,),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: (){
                                    Navigator.pushNamed(context, ConnectionFirst.id);
                                  },
                                  child: ListTile(
                                    title: kDrawerCoachFinder,
                                    leading: IconButton(
                                      onPressed: (){
                                        Navigator.pushNamed(context, ConnectionFirst.id);
                                      },
                                      icon: SvgPicture.asset('images/coachfinder.svg',
                                        height: 25.0, width: 15.0, color: Colors.black,),
                                    ),
                                  ),
                                ),
                                Divider(
                                  color: Colors.grey[400],
                                ),
                                InkWell(
                                  onTap: (){},
                                  child: ListTile(
                                    title: kDrawerFAQ,
                                  ),
                                ),
                                InkWell(
                                  onTap: (){},
                                  child: ListTile(
                                    title: kDrawerTerms,
                                  ),
                                ),
                                InkWell(
                                  onTap: (){},
                                  child: ListTile(
                                    title: kDrawerRefer,
                                  ),
                                ),
                                Divider(
                                  color: Colors.grey[400],
                                ),
                                InkWell(
                                  onTap: (){
                                    Navigator.pushNamed(context, Settings.id);
                                  },
                                  child: ListTile(
                                    title: kSettings,
                                    leading: IconButton(
                                      onPressed: (){
                                        Navigator.pushNamed(context, Settings.id);
                                      },
                                      icon: Icon(Icons.settings,
                                        size: 26.0,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          appBar: AppBar(
                            backgroundColor: const Color(0XFF0F33B8),
                            flexibleSpace: FlexibleSpaceBar(
                              centerTitle: true,
                              title: Center(
                                child: Stack(
                                  children: <Widget>[
                                    Image.asset('images/background.png',
                                      width: 900.0,
                                      height: 150.0,
                                      fit: BoxFit.fill,),
                                    Column(
                                      children: <Widget>[
                                        SizedBox(
                                          height: 30.0,
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(140.0, 0.00, 0.00, 0.00),
                                              child: kRac,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(5.0, 0.00, 0.00, 0.00),
                                              child: kKonnect,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20.0,
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(20.0, 0.00, 0.00, 0.00),
                                              child: kSagar99,
                                            ),
                                            Padding(
                                                padding: EdgeInsets.fromLTRB(200.0, 0.00, 0.00, 0.00),
                                                child: kSquash
                                            ),
                                            IconButton(icon: Icon(Icons.arrow_drop_down,
                                              color: Colors.white,),
                                                onPressed: (){
                                                  DropdownButton(items: <String>['Single','Double']
                                                      .map((String value) {
                                                    return DropdownMenuItem<String>(
                                                      value: value,
                                                      child: Text(value),
                                                    );
                                                  }
                                                  ).toList(),
                                                    onChanged: null,);
                                                }),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            bottom: PreferredSize(
                              preferredSize: Size.square(100.0),
                              child: TabBar(
                                tabs: [
                                  Text('SINGLES', style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17.0,
                                      color: Colors.white
                                  ),),
                                  Text('DOUBLES', style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17.0,
                                      color: Colors.white
                                  ),),
                                  Text('TOURNAMENTS', style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16.0,
                                      color: Colors.white
                                  ),),
                                ],
                              ),
                            ),
                          ),
                          body: TabBarView(
                            children: [
                              RackonnectOne(),
                              RackonnectTwo(),
                              RackonnectThree(),
                            ],
                          ),
                        ),
                      )
                  );
                }
            );
          }
      ),
    );
  }
}
