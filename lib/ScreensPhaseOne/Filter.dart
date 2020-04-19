import 'package:flutter/material.dart';
import 'package:game_app/ScreensPhaseOne/RackonnectOne.dart';
import 'package:game_app/Constants/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Filter extends StatefulWidget {
  static const String id = 'Filter';
  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {

  static final kFilter = Text('Filters',
    style: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 3 * SizeConfig.textMultiplier,
      color: const Color(0XFF0F33B8),
    ),);

  static final kLctn = Text('LOCATION',
    style: TextStyle(
        fontSize: 2.5 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w600,
        color: Colors.grey
    ),);

  static final kSafdarJung = Text("B-2/8 Safdarjung Enclave, New Delhi.",
    style: TextStyle(
      color: Colors.white,
      fontSize: 2 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w400,
    ),);

  static final kGender = Text('GENDER',
    style: TextStyle(
        fontSize: 2.5 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w600,
        color: Colors.grey
    ),);

  static final k6amFilter = Text('6am-12noon',
    style: TextStyle(
      fontFamily: "WorkSansSemiBold",
      fontSize: 2 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w700,
      color: const Color(0XFF0F33B8),
    ),);

  static final kMorningFilter = Text('Morning',
    style: TextStyle(
      fontFamily: "WorkSansSemiBold",
      fontSize: 2 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w700,
      color: const Color(0XFF0F33B8),
    ),);

  static final kAnytimeFilter = Text('Anytime',
    style: TextStyle(
      fontFamily: "WorkSansSemiBold",
      fontSize: 2 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w700,
      color: const Color(0XFF0F33B8),
    ),);

  static final kAfternoonFilter = Text('Afternoon',
    style: TextStyle(
      fontFamily: "WorkSansSemiBold",
      fontSize: 2 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w700,
      color: const Color(0XFF0F33B8),
    ),);

  static final k12noonFilter = Text('12noon-5pm',
    style: TextStyle(
      fontFamily: "WorkSansSemiBold",
      fontSize: 2 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w700,
      color: const Color(0XFF0F33B8),
    ),);

  static final kEveningFilter = Text('Evening',
    style: TextStyle(
      fontFamily: "WorkSansSemiBold",
      fontSize: 2 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w700,
      color: const Color(0XFF0F33B8),
    ),);

  static final k5pmFilter = Text('5pm-10pm',
    style: TextStyle(
      fontFamily: "WorkSansSemiBold",
      fontSize: 2 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w700,
      color: const Color(0XFF0F33B8),
    ),);

  static final kAllPlayers = Text('All Players',
    style: TextStyle(
      fontFamily: "WorkSansSemiBold",
      fontSize: 2 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w700,
      color: const Color(0XFF0F33B8),
    ),);

  static final kMale = Text('Male',
    style: TextStyle(
      fontFamily: "WorkSansSemiBold",
      fontSize: 2 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w700,
      color: const Color(0XFF0F33B8),
    ),);

  static final kFemale = Text('Female',
    style: TextStyle(
      fontFamily: "WorkSansSemiBold",
      fontSize: 2 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w700,
      color: const Color(0XFF0F33B8),
    ),);

  static final kClubFilter = Text('CLUB',
    style: TextStyle(
        fontSize: 3 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w600,
        color: Colors.grey
    ),);

  static final kTime = Text('TIME',
    style: TextStyle(
        fontSize: 3 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w600,
        color: Colors.grey
    ),);

  static final kAge = Text('AGE',
    style: TextStyle(
        fontSize: 3 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w600,
        color: Colors.grey
    ),);

  static final kAgeBand = Text('10 - 65',
    style: TextStyle(
      fontSize: 3 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w800,
      color: const Color(0XFF0F33B8),
    ),);

  static final kSelectClubFilter = Text('Select Club',
    style: TextStyle(
        fontSize: 3 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w500,
        color: const Color(0XFF0F33B8)
    ),);

  static final kApplyFilters = Text("Apply Filters",
    style: TextStyle(
      fontSize: 2.5 * SizeConfig.textMultiplier,
      color: Colors.white,
      fontWeight: FontWeight.w500,
    ),);

  static final k10Yrs = Text('10 YEARS',
    style: TextStyle(
        fontSize: 2.5 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w400,
        color: Colors.grey
    ),);

  static final k65Yrs = Text('65 YEARS',
    style: TextStyle(
        fontSize: 2.5 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w400,
        color: Colors.grey
    ),);

  RangeValues _values = RangeValues(10, 65);
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
                        //--------------------- Filters ------------------------
                        appBar: AppBar(
                          leading: IconButton(icon: Icon(Icons.close,
                              color: Colors.black),
                              iconSize: 3 * SizeConfig.textMultiplier,
                              onPressed: () {
                                Navigator.pushReplacementNamed(context, RackonnectOne.id);
                              }),
                          elevation: 0.00,
                          backgroundColor: Colors.transparent,
                          title: Center(
                              child: kFilter,
                          ),
                        ),
                        //---------------- Items in Filter ---------------------
                        body: ListView(
                          children: ListTile.divideTiles(
                            context: context,
                            tiles: [
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(
                                      height: 3 * SizeConfig.textMultiplier,
                                    ),
                                    //----------------- LOCATION ---------------
                                    FlatButton(
                                      onPressed: (){},
                                        child: kLctn,
                                      ),
                                    //------Raiseed Button contains address-----
                                    Center(
                                      child: Container(
                                        height: 6 * SizeConfig.textMultiplier,
                                        width: 90 * SizeConfig.imageSizeMultiplier,
                                        child: RaisedButton(
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                                          elevation: 0.0,
                                          color: const Color(0XFF0F33B8),
                                          onPressed: (){},
                                          child: kSafdarJung,
                                        ),
                                      ),
                                    ),

                                    //----------------- GENDER -----------------
                                    FlatButton(
                                      onPressed: (){},
                                        child: kGender,
                                      ),
                                    //----------------AllPlayers----------------
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Container(
                                          height: 20 * SizeConfig.textMultiplier,
                                          width: 25 * SizeConfig.imageSizeMultiplier,
                                          color: Colors.transparent,
                                          child: Card(
                                            elevation: 10.0,
                                            clipBehavior: Clip.hardEdge,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Center(
                                                  child: SvgPicture.asset('images/morning.svg',
                                                    height: 12 * SizeConfig.textMultiplier,
                                                    width: 13 * SizeConfig.imageSizeMultiplier,),
                                                ),
                                                Center(
                                                    child: kAllPlayers,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        //-------------Male Card----------------
                                        Container(
                                          height: 20 * SizeConfig.textMultiplier,
                                          width: 25 * SizeConfig.imageSizeMultiplier,
                                          color: Colors.transparent,
                                          child: Card(
                                            elevation: 10.0,
                                            clipBehavior: Clip.hardEdge,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Center(
                                                  child: SvgPicture.asset('images/morning.svg',
                                                    height: 12 * SizeConfig.textMultiplier,
                                                    width: 13 * SizeConfig.imageSizeMultiplier,),
                                                ),
                                                Center(
                                                  child: kMale,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        //------------Female Card---------------
                                        Container(
                                          height: 20 * SizeConfig.textMultiplier,
                                          width: 25 * SizeConfig.imageSizeMultiplier,
                                          color: Colors.transparent,
                                          child: Card(
                                            elevation: 10.0,
                                            clipBehavior: Clip.hardEdge,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Center(
                                                  child: SvgPicture.asset('images/morning.svg',
                                                    height: 12 * SizeConfig.textMultiplier,
                                                    width: 13 * SizeConfig.imageSizeMultiplier,),
                                                ),
                                                Center(
                                                  child: kFemale,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    //------------------Slider------------------
                                    Column(
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              //-------------Age----------------
                                              FlatButton(
                                                onPressed: (){},
                                                child: kAge,
                                              ),
                                              Spacer(),
                                              //------------10-65---------------
                                              FlatButton(
                                                onPressed: (){},
                                                child: kAgeBand,
                                              ),
                                            ],
                                          ),
                                          Center(
                                            child: RangeSlider(
                                                values: _values,
                                                min: 10,
                                                max: 65,
                                                activeColor: const Color(0XFF0F33B8),
                                                inactiveColor: Colors.grey,
                                                onChanged: (RangeValues values) {
                                                  setState(() {
                                                    if (values.end - values.start >= 20) {
                                                      _values = values;
                                                    } else {
                                                      if (_values.start == values.start) {
                                                        _values = RangeValues(_values.start, _values.start + 20);
                                                      } else {
                                                        _values = RangeValues(_values.end - 20, _values.end);
                                                      }
                                                    }
                                                  });
                                                }),
                                          ),
                                          Row(
                                            children: <Widget>[
                                              FlatButton(
                                                onPressed: (){},
                                                child: k10Yrs,
                                              ),
                                              Spacer(),
                                              FlatButton(
                                                onPressed: (){},
                                                child: k65Yrs,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    Divider(
                                      color: Colors.grey,
                                    ),
                                    //----------------- TIME -------------------
                                    FlatButton(
                                        onPressed: (){},
                                        child: kTime,
                                      ),
                                    //---------------Time Cards-----------------
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          height: 20 * SizeConfig.textMultiplier,
                                          width: 25 * SizeConfig.imageSizeMultiplier,
                                          color: Colors.transparent,
                                          child: Card(
                                            elevation: 10.0,
                                            clipBehavior: Clip.hardEdge,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[
                                                Center(
                                                  child: SvgPicture.asset('images/anytime.svg',
                                                    height: 12 * SizeConfig.textMultiplier,
                                                    width: 13 * SizeConfig.imageSizeMultiplier,),
                                                ),
                                                kAnytimeFilter,
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 20 * SizeConfig.textMultiplier,
                                          width: 25 * SizeConfig.imageSizeMultiplier,
                                          color: Colors.transparent,
                                          child: Card(
                                            elevation: 10.0,
                                            clipBehavior: Clip.hardEdge,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Center(
                                                  child: SvgPicture.asset('images/morning.svg',
                                                    height: 12 * SizeConfig.textMultiplier,
                                                    width: 13 * SizeConfig.imageSizeMultiplier,),
                                                ),
                                                Column(
                                                  children: <Widget>[
                                                    kMorningFilter,
                                                    k6amFilter,
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 20 * SizeConfig.textMultiplier,
                                          width: 25 * SizeConfig.imageSizeMultiplier,
                                          color: Colors.transparent,
                                          child: Card(
                                            elevation: 10.0,
                                            clipBehavior: Clip.hardEdge,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Center(
                                                  child: SvgPicture.asset('images/afternoon.svg',
                                                    height: 12 * SizeConfig.textMultiplier,
                                                    width: 13 * SizeConfig.imageSizeMultiplier,),
                                                ),
                                                Column(
                                                  children: <Widget>[
                                                    kAfternoonFilter,
                                                    k12noonFilter,
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 20 * SizeConfig.textMultiplier,
                                          width: 25 * SizeConfig.imageSizeMultiplier,
                                          color: Colors.transparent,
                                          child: Card(
                                            elevation: 10.0,
                                            clipBehavior: Clip.hardEdge,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Center(
                                                  child: SvgPicture.asset('images/evening.svg',
                                                    height: 12 * SizeConfig.textMultiplier,
                                                    width: 13 * SizeConfig.imageSizeMultiplier,),
                                                ),
                                                Column(
                                                  children: <Widget>[
                                                    kEveningFilter,
                                                    k5pmFilter,
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 2 * SizeConfig.textMultiplier,
                                    ),
                                    //--------------- CLUB ---------------------
                                    Container(
                                        child:  kClubFilter,
                                      ),
                                    //--------------Select Club-----------------
                                     FlatButton(
                                        onPressed: (){},
                                        child: kSelectClubFilter,
                                      ),
                                    //------------ APPLY FILTER ----------------
                                    Center(
                                        child: Container(
                                          height: 6 * SizeConfig.textMultiplier,
                                          width: 40 * SizeConfig.imageSizeMultiplier,
                                          child: FloatingActionButton(
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35.0)),
                                            elevation: 0.0,
                                            backgroundColor: const Color(0XFF0F33B8),
                                            onPressed: (){
                                              Navigator.pushNamed(context, RackonnectOne.id);
                                            },
                                            child: Center(
                                                child: kApplyFilters),
                                          ),
                                        ),
                                      ),
                                    SizedBox(
                                      height: 4 * SizeConfig.textMultiplier,
                                    ),
                                  ],
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