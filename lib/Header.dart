import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:game_app/ScreensPhaseFour/LeaderBoardOne.dart';
import 'package:game_app/ScreensPhaseFour/LeaderBoardTwo.dart';
import 'package:game_app/ScreensPhaseThree/MatchHistory.dart';
import 'package:game_app/ScreensPhaseThree/Tournaments.dart';
import 'ScreensPhaseFour/FAQs.dart';

import 'Constants/ConstantTextsButtons.dart';

class Header extends StatefulWidget {
  static const String id = 'Header';
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  static final kSettings = Text('Settings',
    style: TextStyle(
        fontSize: 22.0,
        fontWeight: FontWeight.w700,
        color: Colors.grey
    ),);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          onPressed: (){},
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
                Navigator.pushReplacementNamed(context, MatchHistory.id);
              },
              child: ListTile(
                title: kDrawerMatches,
                leading: IconButton(
                  onPressed: (){},
                    icon: SvgPicture.asset('images/matches.svg',
                    height: 25.0, width: 15.0,)),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.pushReplacementNamed(context, LeaderBoardTwo.id);
              },
              child: ListTile(
                title: kDrawerLeadership,
                leading: IconButton(
                  onPressed: (){},
                    icon: SvgPicture.asset('images/groups.svg',
                      height: 25.0, width: 15.0,)),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.pushReplacementNamed(context, LeaderBoardOne.id);
              },
              child: ListTile(
                title: kDrawerGroups,
                leading: IconButton(
                  onPressed: (){},
                    icon: SvgPicture.asset('images/groups.svg',
                      height: 25.0, width: 15.0,)),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.pushReplacementNamed(context, Tournaments.id);
              },
              child: ListTile(
                title: kDrawerPastTournaments,
                leading: IconButton(
                  onPressed: (){},
                  icon: SvgPicture.asset('images/matches.svg',
                    height: 25.0, width: 15.0,),
                ),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: kDrawerCoachFinder,
                leading: IconButton(
                  onPressed: (){},
                  icon: SvgPicture.asset('images/coachfinder.svg',
                    height: 25.0, width: 15.0, color: Colors.black,),
                ),
              ),
            ),
            Divider(
              color: Colors.grey[400],
            ),
            InkWell(
              onTap: (){
                Navigator.pushReplacementNamed(context, FAQs.id);
              },
              child: ListTile(
                title: kDrawerFAQ,
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.pushReplacementNamed(context, FAQs.id);
              },
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
              onTap: (){},
              child: ListTile(
                title: kSettings,
                leading: IconButton(
                  onPressed: (){},
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
        title: Padding(
            padding: EdgeInsets.fromLTRB(100.0, 0.00, 0.00, 0.00),
            child: Text('Update Profile',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 24.0
              ),)),
        backgroundColor: const Color(0XFF0F33B8),
      ),
      body: Container(),
    );
  }
}

