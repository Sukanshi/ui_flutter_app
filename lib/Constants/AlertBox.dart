import 'package:flutter/material.dart';

import 'package:game_app/ScreensPhaseFour/CreateTournament.dart';
import 'package:game_app/ScreensPhaseTwo/CreateGroup.dart';
import 'package:game_app/ScreensPhaseTwo/CreateMatch.dart';
import 'package:game_app/Constants/ConstantTextsButtons.dart';

class AlertBox extends StatelessWidget {
  static const String id = 'AlertBox';
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


void AlertBoxOne (BuildContext context){
  var alertDialogue = AlertDialog(
    actions: <Widget>[
      Padding(
        padding: EdgeInsets.fromLTRB(0.00, 200.00, 0.00, 0.00),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.transparent,
              height: 60.0,
              width: 300.0,
              child: RaisedButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                  elevation: 10.0,
                  color: const Color(0XFF0F33B8),
                  onPressed: (){
                    Navigator.pushReplacementNamed(context, CreateMatch.id);
                  },
                  child: kCreateMtch
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Container(
              height: 60.0,
              width: 300.0,
              child: RaisedButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                  elevation: 10.0,
                  color: const Color(0XFF0F33B8),
                  onPressed: (){
                    Navigator.pushReplacementNamed(context, CreateGroup.id);
                  },
                  child: kCreateGrp
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Container(
              height: 60.0,
              width: 300.0,
              child: RaisedButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                  elevation: 10.0,
                  color: const Color(0XFF0F33B8),
                  onPressed: (){
                    Navigator.pushReplacementNamed(context, CreateTournament.id);
                  },
                  child: kCreateTournament
              ),
            ),
          ],
        ),
      ),
    ],
    backgroundColor: Colors.transparent,
  );

  showDialog(
      context: context,
      builder: (BuildContext context){
        return alertDialogue;
      });
}