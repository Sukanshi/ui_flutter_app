import 'package:flutter/material.dart';

class FAQs extends StatefulWidget {
  static const String id = 'FAQs';
  @override
  _FAQsState createState() => _FAQsState();
}

class _FAQsState extends State<FAQs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFF0F33B8),
        title: Padding(
          padding: EdgeInsets.fromLTRB(150.0, 0.00, 0.00, 0.00),
          child: Text('FAQs',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 24.0
            ),),
        ),
      ),
      //--------------------------Points for FAQs-------------------------------
      body: ListView(
         children: ListTile.divideTiles(
           color: Colors.transparent,
          context: context,
          tiles: [
          Padding(
            padding: EdgeInsets.fromLTRB(20.0, 10.0, 0.00, 0.00),
            child: Text('Joining Rackonnect - ',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: Colors.black
            ),),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20.0, 10.0, 0.00, 0.00),
            child: Text('What is Rackonnect ?',
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.black
              ),),
          ),
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 10.0, 0.00, 0.00),
              child: Text('Rackonnect is a social neyworking app for connecting with potential racket players around you.'
                  'Our key features help you connect with fellow racket players looking for a buddy!'
                  'You can also compete for the leaderboard and conquer the charts by participating'
                  'or organizing racket tournaments through Rackonnect',
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.black
                ),),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 10.0, 0.00, 0.00),
              child: Text('Is the registration free ?',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.black
                ),),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 10.0, 0.00, 0.00),
              child: Text('Yes, registration in Rackonnect is free of cost. You can either login via Facebook/Google'
                  'Or login via your mobile phone number',
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.black
                ),),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 10.0, 0.00, 0.00),
              child: Text('Choose your Sport',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.black
                ),),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 10.0, 0.00, 0.00),
              child: Text("Update Profile > Choose Sport."
                  "You can choose single or multiple racket sports you wish to play"
                  "You can select more sports after your profile is created by going on 'Edit File'",
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.black
                ),),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 10.0, 0.00, 0.00),
              child: Text('Choose your level',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.black
                ),),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 10.0, 0.00, 0.00),
              child: Text("Choose sport > Choose level."
                  "You need to access your ability by yourself and select the level"
                  "that best suits you",
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.black
                ),),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 10.0, 0.00, 0.00),
              child: Text('Find your Rackmates -',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.black
                ),),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 10.0, 0.00, 0.00),
              child: Text('Filters',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.black
                ),),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 10.0, 0.00, 0.00),
              child: Text("Homepage > Select filter icon > Filter page and pick the"
                  "filter basis your convenience. These can be changed using the"
                  "same steps at any given time",
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.black
                ),),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 10.0, 0.00, 0.00),
              child: Text('Chat',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.black
                ),),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 10.0, 0.00, 0.00),
              child: Text("Homepage > Chat Now."
                  "You can chat with any player you deem best suited as your opponent."
                  "Once the match is over and the scores are filled in, the chat gets"
                  "deleted automatically.",
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.black
                ),),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 10.0, 0.00, 0.00),
              child: Text('Create Match',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.black
                ),),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 10.0, 0.00, 0.00),
              child: Text("Homepage > Chat Now > Create Match"
                  "This will help you fix a match with suitable racket player around"
                  "you by filing basic details such as match name, location and time",
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.black
                ),),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 10.0, 0.00, 0.00),
              child: Text('Scoring & Results -',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.black
                ),),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 10.0, 0.00, 0.00),
              child: Text('Two way validation',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.black
                ),),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 10.0, 0.00, 0.00),
              child: Text("Match end > start scoring > select game type > "
                  "put match score (not game score) > save score."
                  "Once fed, the score goes to the other person (singles) or the "
                  "other person (doules). The scores will get updated once it is"
                  "accepted by the second person",
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.black
                ),),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 10.0, 0.00, 0.00),
              child: Text('1 hour acceptance',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.black
                ),),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 10.0, 0.00, 0.00),
              child: Text("Once the score has been sent by the host, the other player"
                  "has to validate it within 1 hour or else the scores will not get "
                  "updated and both the players match wouldn\'t get counted in system.",
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.black
                ),),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 10.0, 0.00, 0.00),
              child: Text('Wrong scoring',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.black
                ),),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 10.0, 0.00, 0.00),
              child: Text("If the host has put the wrong score then you can decline"
                  "it and report the player.",
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.black
                ),),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 10.0, 0.00, 0.00),
              child: Text('LeaderBoard',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.black
                ),),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 10.0, 0.00, 0.00),
              child: Text("Once the scores are updated, the win % is calculated and"
                  "fed in the leaderboard. Leaderboard works on the basis of games played or won."
                  "it and report the player.",
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.black
                ),),
            ),
            Row(
              children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.00, 0.00),
                child: Text('Points',
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black
                  ),),
              ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(20.0, 10.00, 0.00, 0.00),
                      child: Text('Download App - 100 points',
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.black
                        ),),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20.0, 0.00, 0.00, 0.00),
                      child: Text('Refer Friends - 50 points',
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.black
                        ),),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20.0, 0.00, 0.00, 0.00),
                      child: Text('Reffering Vouchers/Code - 50 points',
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.black
                        ),),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20.0, 0.00, 0.00, 0.00),
                      child: Text('Win - 50 points',
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.black
                        ),),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20.0, 0.00, 0.00, 0.00),
                      child: Text('Loss - 10 points',
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.black
                        ),),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20.0, 0.00, 0.00, 0.00),
                      child: Text('DNS - (-100 points) Tournament',
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.black
                        ),),
                    ),
                  ],
                )
              ],
            ),
        ],
    ).toList(),
      ),
    );
  }
}
