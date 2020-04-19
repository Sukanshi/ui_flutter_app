import 'package:flutter/material.dart';
import 'package:game_app/Constants/size_config.dart';

class PointSystem extends StatefulWidget {
  static const String id = 'PointSystem';
  @override
  _PointSystemState createState() => _PointSystemState();
}

class _PointSystemState extends State<PointSystem> {

  static final kPointSystem = Text('Point System',
    style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 3.5 * SizeConfig.textMultiplier,
        color: Colors.white),
  );

  static final kApp = Text('App Download',
    style: TextStyle(
      fontSize: 2.5 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w600,
      color: const Color(0XFF0F33B8),
    ),);

  static final kReferFriend = Text('Refer Friends',
  style: TextStyle(
  fontSize: 2.5 * SizeConfig.textMultiplier,
  fontWeight: FontWeight.w600,
  color: const Color(0XFF0F33B8),
  ),);

  static final kReferCode = Text('Refering Vouchers/Code',
  style: TextStyle(
  fontSize: 2.5 * SizeConfig.textMultiplier,
  fontWeight: FontWeight.w600,
  color: const Color(0XFF0F33B8),
  ),);

  static final kWin = Text('Win',
  style: TextStyle(
  fontSize: 2.5 * SizeConfig.textMultiplier,
  fontWeight: FontWeight.w600,
  color: const Color(0XFF0F33B8),
  ),);

  static final kLoss =  Text('Loss',
    style: TextStyle(
      fontSize: 2.5 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w600,
      color: const Color(0XFF0F33B8),
    ),);

  static final kDNS = Text('Did not show up(DNS)',
  style: TextStyle(
  fontSize: 2.5 * SizeConfig.textMultiplier,
  fontWeight: FontWeight.w600,
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
                        backgroundColor: Colors.grey[200],
                        appBar: AppBar(
                          leading: IconButton(icon: Icon(Icons.close,
                                color: Colors.white),
                                iconSize: 3.5 * SizeConfig.textMultiplier,
                                onPressed: () {}),
                          backgroundColor: const Color(0XFF0F33B8),
                          title: Center(
                            child: kPointSystem),
                        ),
                        body: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 3 * SizeConfig.textMultiplier,
                            ),
                            Container(
                              height: 6 * SizeConfig.textMultiplier,
                              width: 100 * SizeConfig.imageSizeMultiplier,
                              color: Colors.white,
                              child: FlatButton(
                                onPressed: (){},
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: kApp),
                              ),
                            ),
                            SizedBox(
                              height: 3 * SizeConfig.textMultiplier,
                            ),
                            Container(
                              height: 6 * SizeConfig.textMultiplier,
                              width: 100 * SizeConfig.imageSizeMultiplier,
                              color: Colors.white,
                              child: FlatButton(
                                onPressed: (){},
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: kReferFriend),
                              ),
                            ),
                            SizedBox(
                              height: 3 * SizeConfig.textMultiplier,
                            ),
                            Container(
                              height: 6 * SizeConfig.textMultiplier,
                              width: 100 * SizeConfig.imageSizeMultiplier,
                              color: Colors.white,
                              child: FlatButton(
                                onPressed: (){},
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: kReferCode),
                              ),
                            ),
                            SizedBox(
                              height: 3 * SizeConfig.textMultiplier,
                            ),
                            Container(
                                height: 6 * SizeConfig.textMultiplier,
                                width: 100 * SizeConfig.imageSizeMultiplier,
                              color: Colors.white,
                              child: FlatButton(
                                onPressed: (){},
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: kWin),
                              ),
                            ),
                            SizedBox(
                              height: 3 * SizeConfig.textMultiplier,
                            ),
                            Container(
                              height: 6 * SizeConfig.textMultiplier,
                              width: 100 * SizeConfig.imageSizeMultiplier,
                              color: Colors.white,
                              child: FlatButton(
                                onPressed: (){},
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: kLoss),
                              ),
                            ),
                            SizedBox(
                              height: 3 * SizeConfig.textMultiplier,
                            ),
                            Container(
                              height: 6 * SizeConfig.textMultiplier,
                              width: 100 * SizeConfig.imageSizeMultiplier,
                              color: Colors.white,
                              child: FlatButton(
                                onPressed: (){},
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: kDNS),
                              ),
                            ),
                          ],
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
