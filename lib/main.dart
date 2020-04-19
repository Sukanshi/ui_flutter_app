import 'package:flutter/material.dart';
import 'Matches.dart';

import 'ScreensPhaseOne/FirstPage.dart';
import 'ScreensPhaseOne/Login_PageOne.dart';
import 'ScreensPhaseOne/Login_SecondPage.dart';
import 'ScreensPhaseOne/HomePage.dart';
import 'ScreensPhaseTwo/CreateMatch.dart';
import 'ScreensPhaseTwo/CreateGroup.dart';
import 'ScreensPhaseOne/SportsType.dart';
import 'ScreensPhaseOne/Filter.dart';
import 'ScreensPhaseTwo/MyProfileFirst.dart';
import 'ScreensPhaseTwo/MyProfileSecond.dart';
import 'ScreensPhaseTwo/MyProfileThree.dart';
import 'ScreensPhaseTwo/VitulProfileFirst.dart';
import 'ScreensPhaseTwo/VitulProfileThree.dart';
import 'ScreensPhaseThree/Notice.dart';
import 'ScreensPhaseThree/Feedbck.dart';
import 'ScreensPhaseThree/MatchHistory.dart';
import 'ScreensPhaseFour/FAQs.dart';
import 'ScreensPhaseFour/ExploreMatches.dart';
import 'ScreensPhaseFour/ScoringRequests.dart';
import 'ScreensPhaseThree/VitulDoubles.dart';
import 'ScreensPhaseThree/Settings.dart';
import 'ScreensPhaseThree/MatchScoringOne.dart';
import 'ScreensPhaseThree/MatchScoringTwo.dart';
import 'ScreensPhaseThree/MatchScoringFour.dart';
import 'ScreensPhaseThree/MatchScoringFive.dart';
import 'ScreensPhaseThree/MatchScoringSix.dart';
import 'ScreensPhaseFour/PointSystem.dart';
import 'ScreensPhaseOne/RackonnectOne.dart';
import 'ScreensPhaseOne/RackonnectTwo.dart';
import 'ScreensPhaseOne/RackonnectThree.dart';
import 'ScreensPhaseThree/Tournaments.dart';
import 'ScreensPhaseFour/CreateTournament.dart';
import 'ScreensPhaseTwo/ChatScreenOne.dart';
import 'ScreensPhaseOne/Location.dart';
import 'ScreensPhaseFour/ChatScreenTwo.dart';
import 'ScreensPhaseFour/LeaderBoardTwo.dart';
import 'ScreensPhaseFour/LeaderBoardOne.dart';
import 'Extra.dart';
import 'Header.dart';
import 'BadmintonGroup.dart';
import 'Matches.dart';
import 'Constants/AlertBox.dart';
import 'Headbar.dart';
import 'ScreensPhaseTwo/VitulProfileSecond.dart';
import 'ScreensPhaseOne/ConnectionFirst.dart';
import 'ScreensPhaseOne/ConnectionSecond.dart';
import 'GroupChat.dart';
import 'MyCoach.dart';
import 'FindCoach.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      initialRoute: FindCoach.id,
      routes: {
        FindCoach.id: (context) => FindCoach(),
        FirstPage.id: (context) => FirstPage(),
        LoginPageOne.id: (context) => LoginPageOne(),
        LoginSecondPage.id: (context) => LoginSecondPage(),
        HomePage.id: (context) => HomePage(),
        CreateMatch.id: (context) => CreateMatch(),
        CreateGroup.id: (context) => CreateGroup(),
        SportsType.id: (context) => SportsType(),
        Filter.id: (context) => Filter(),
        MyProfileFirst.id: (context) => MyProfileFirst(),
        MyProfileSecond.id: (context) => MyProfileSecond(),
        MyProfileThree.id: (context) => MyProfileThree(),
        VitulProfileFirst.id: (context) => VitulProfileFirst(),
        VitulProfileSecond.id: (context) => VitulProfileSecond(),
        VitulProfileThree.id: (context) => VitulProfileThree(),
        Notice.id: (context) => Notice(),
        Feedbck.id: (context) => Feedbck(),
        MatchHistory.id: (context) => MatchHistory(),
        FAQs.id: (context) => FAQs(),
        ExploreMatches.id: (context) => ExploreMatches(),
        ScoringRequests.id: (context) => ScoringRequests(),
        VitulDoubles.id: (context) => VitulDoubles(),
        Settings.id: (context) => Settings(),
        MatchScoringOne.id: (context) => MatchScoringOne(),
        MatchScoringTwo.id: (context) => MatchScoringTwo(),
        MatchScoringFour.id: (context) => MatchScoringFour(),
        MatchScoringFive.id: (context) => MatchScoringFive(),
        MatchScoringSix.id: (context) => MatchScoringSix(),
        PointSystem.id: (context) => PointSystem(),
        RackonnectOne.id: (context) => RackonnectOne(),
        RackonnectTwo.id: (context) => RackonnectTwo(),
        RackonnectThree.id: (context) => RackonnectThree(),
        Tournaments.id: (context) => Tournaments(),
        CreateTournament.id: (context) => CreateTournament(),
        ChatScreenOne.id: (context) => ChatScreenOne(),
        ChatScreenTwo.id: (context) => ChatScreenTwo(),
        Location.id: (context) => Location(),
        LeaderBoardOne.id: (context) => LeaderBoardOne(),
        LeaderBoardTwo.id: (context) => LeaderBoardTwo(),
        Header.id: (context) => Header(),
        BadmintonGroup.id: (context) => BadmintonGroup(),
        AlertBox.id: (context) => AlertBox(),
        Matches.id: (context) => Matches(),
        Headbar.id: (context) => Headbar(),
        GroupChat.id: (context) => GroupChat(),
        ConnectionFirst.id: (context) => ConnectionFirst(),
        ConnectionSecond.id: (context) => ConnectionSecond(),
        Extra.id: (context) => Extra(),
        MyCoach.id: (context) => MyCoach(),
      },
    );
  }
}
