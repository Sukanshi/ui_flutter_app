import 'package:flutter/material.dart';
import 'package:game_app/Constants/size_config.dart';

class MyCoach extends StatefulWidget {
  static const String id = 'MyCoach';
  @override
  _MyCoachState createState() => _MyCoachState();
}

class _MyCoachState extends State<MyCoach> {

  static final kMyCoach =  Text('My Coach',
    style: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize:  3 * SizeConfig.textMultiplier,
    ),);

  static final kPraveen = Text('Praveen',
    style: TextStyle(
        fontSize: 2.5 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w700,
        color: Colors.black
    ),);

  static final k27Yr = Text('27 Y (Male)',
    style: TextStyle(
        fontSize: 2 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w500,
        color: Colors.grey
    ),);

  static final kTime = Text('13-Sept-2017 to 16-Oct-2019',
    style: TextStyle(
        fontSize: 2 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w400,
        color: Colors.grey
    ),);

  static final kViewDetails = Text('View Details',
    style: TextStyle(
      color: Colors.white,
      fontSize: 1.5 * SizeConfig.textMultiplier,
    ),);

  static final kPerMonth = Text('4,000/- Per Month',
    style: TextStyle(
      color: Colors.white,
      fontSize: 1.2 * SizeConfig.textMultiplier,
    ),);

  static final k4 = Text('4.0',
    style: TextStyle(
      color: Colors.grey,
      fontSize: 1.6 * SizeConfig.textMultiplier,
    ),);

  static final kSquash = Text('Squash',
    style: TextStyle(
        fontSize: 2 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w400,
        color: const Color(0XFF0F33B8)
    ),);

  static final kVerified = Text('Verified',
    style: TextStyle(
        fontSize: 2 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w600,
        color: const Color(0XFF0F33B8)
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
                            child: kMyCoach,
                          ),
                        ),
                        body: ListView(
                          children: ListTile.divideTiles(
                            context: context,
                            tiles: [
                              //----------------Details of Player 1-------------
                              Container(
                                height: 15 * SizeConfig.textMultiplier,
                                width: 100 * SizeConfig.imageSizeMultiplier,
                                child: Center(
                                  child: Card(
                                    child: Stack(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.all(10.0),
                                              child: Container(
                                                padding: EdgeInsets.all(3.0),
                                                height: 12 * SizeConfig.textMultiplier,
                                                width: 12 * SizeConfig.imageSizeMultiplier,
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
                                            ),
                                            Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Row(
                                                  children: <Widget>[
                                                    kPraveen,
                                                    VerticalDivider(
                                                      width: 2 * SizeConfig.imageSizeMultiplier,
                                                    ),
                                                    k27Yr,
                                                  ],
                                                ),
                                                kTime,
                                                Row(
                                                  children: <Widget>[
                                                    Icon(Icons.star,
                                                      size: 2 * SizeConfig.textMultiplier,
                                                      color: Colors.amber,),
                                                    Icon(Icons.star,
                                                      size: 2 * SizeConfig.textMultiplier,
                                                      color: Colors.amber,),
                                                    Icon(Icons.star,
                                                      size: 2 * SizeConfig.textMultiplier,
                                                      color: Colors.amber,),
                                                    Icon(Icons.star,
                                                      size: 2 * SizeConfig.textMultiplier,
                                                      color: Colors.amber,),
                                                    Icon(Icons.star_border,
                                                      size: 2 * SizeConfig.textMultiplier,
                                                      color: Colors.amber,),
                                                    VerticalDivider(
                                                      width: 2 * SizeConfig.textMultiplier,
                                                    ),
                                                    k4,
                                                  ],
                                                ),
                                                Row(
                                                  children: <Widget>[
                                                    kSquash,
                                                    VerticalDivider(
                                                      width: 2 * SizeConfig.textMultiplier,
                                                    ),
                                                    kVerified,
                                                    Icon(Icons.verified_user,
                                                      size: 2 * SizeConfig.textMultiplier,
                                                      color: Colors.lightBlue,),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            children: <Widget>[
                                              Spacer(),
                                              Padding(
                                                padding: EdgeInsets.all(3.0),
                                                child: SizedBox(
                                                  height: 3 * SizeConfig.textMultiplier,
                                                  width: 25 * SizeConfig.imageSizeMultiplier,
                                                  child: FlatButton(
                                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                                                    color: const Color(0XFF0F33B8),
                                                    onPressed: (){},
                                                    child: kViewDetails,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.all(3.0),
                                                child: SizedBox(
                                                  height: 3 * SizeConfig.textMultiplier,
                                                  width: 25 * SizeConfig.imageSizeMultiplier,
                                                  child: FlatButton(
                                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                                                    color: const Color(0XFF0F33B8),
                                                    onPressed: (){},
                                                    child: kPerMonth,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
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
