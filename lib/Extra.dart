import 'package:flutter/material.dart';
import 'package:game_app/Constants/ConstantTextsButtons.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "TabBar Inside AppBar Demo",
      home: Extra(),
));


class Extra extends StatefulWidget {
  static const String id = 'Extra';
  @override
  _ExtraState createState() => _ExtraState();
}

class _ExtraState extends State<Extra> {
  bool _isExpanded = true;
    @override
    Widget build(BuildContext context) {
    return MaterialApp(
      title: "Test",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Test"),
        ),
        body: ListView(
          children: <Widget>[
             ExpansionPanelList(
              expansionCallback: (int panelIndex, bool isExpanded) {
                setState(() {
                  _isExpanded = !isExpanded;
                });
              },
              children: <ExpansionPanel>[
                 ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) =>
              Row(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: <Widget>[
               Padding(
                padding: EdgeInsets.fromLTRB(10.0, 0.00, 0.00, 0.00),
                child: kSquash,
                ),
               Padding(
                padding: EdgeInsets.fromLTRB(30.0, 0.00, 0.00, 0.00),
                child: kSquash53,
               ),
            ],
         ),
                  body: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          //------------------------Games-----------------------
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.fromLTRB(5.00, 5.00, 0.00, 0.00),
                                child: kGames,
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(5.0, 5.00, 0.00, 0.00),
                                child: Container(
                                  child: k0,
                                ),
                              ),
                            ],
                          ),
                          //-------------------------Wins-----------------------
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.fromLTRB(5.0, 5.00, 0.00, 0.00),
                                child: kWins,
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(5.0, 5.00, 0.00, 0.00),
                                child: Container(
                                  child: k0,
                                ),
                              ),
                            ],
                          ),
                          //------------------------Loss----------------
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.fromLTRB(5.0, 5.00, 0.00, 0.00),
                                child: kLoss,
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(5.0, 5.00, 0.00, 0.00),
                                child: Container(
                                  child: k0,
                                ),
                              ),
                            ],
                          ),
                          //----------------Winning Percent-------------
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.fromLTRB(5.0, 5.00, 0.00, 0.00),
                                child: kWinnings,
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(5.0, 5.00, 0.00, 0.00),
                                child: Container(
                                  child: k100,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10.00, 0.0, 0.00, 10.00),
                          child: LinearPercentIndicator(
                            width: MediaQuery.of(context).size.width - 250,
                            animation: true,
                            lineHeight: 7.0,
                            animationDuration: 2000,
                            percent: 0.8,
                            linearStrokeCap: LinearStrokeCap.roundAll,
                            progressColor: const Color(0XFF0F33B8),
                          ),),
                      ),
                    ],
                  ),
                  isExpanded: _isExpanded,
                ),
              ],
            ),
          ],
        ),
      ),
    );
    }
    }

