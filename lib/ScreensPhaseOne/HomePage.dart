import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'SportsType.dart';
import 'package:game_app/Constants/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  static const String id = 'HomePage';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  static final kNext = Text("NEXT",
    style: TextStyle(
      fontSize: 2.5 * SizeConfig.textMultiplier,
      color: Colors.white,
      fontWeight: FontWeight.w500,
    ),);

  static final kUpdateProfile = Text('Update Profile',
    textAlign: TextAlign.center,
    style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w700,
        fontSize: 3.5 * SizeConfig.textMultiplier,
    ),);

  static final kAddImage = Text("Add Image",
    style: TextStyle(
      color: Colors.white,
      fontSize: 2 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w400,
    ),);

  static final kGenderBlack = Text('GENDER',
    style: TextStyle(
        fontSize: 2.5 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w600,
        color: Colors.black
    ),);

  static final kMaleHome = Text('Male',
    style: TextStyle(
        fontSize: 2.5 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w600,
        color: Colors.black
    ),);

  static final kFemaleHome = Text('Female',
    style: TextStyle(
        fontSize: 2.5 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w600,
        color: Colors.black
    ),);

  static final kPreferTime = Text("Prefer Time",
    style: TextStyle(
        fontSize: 2.5 * SizeConfig.textMultiplier,
        color: Colors.black,
        fontWeight: FontWeight.w700
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

  static final kClubFilter = Text('CLUB',
    style: TextStyle(
        fontSize: 3 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w600,
        color: Colors.grey
    ),);

  static final kSelectClubFilter = Text('Select Club',
    style: TextStyle(
        fontSize: 3 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w500,
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
                        body: ListView(
                          children: ListTile.divideTiles(
                            context: context,
                            tiles: [
                              Stack(
                                children: <Widget>[
                                  Image.asset('images/topheader.png',
                                    width: 100 * SizeConfig.imageSizeMultiplier,
                                    height: 25 * SizeConfig.textMultiplier,
                                    fit: BoxFit.fill,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(
                                        height: 20 * SizeConfig.textMultiplier,
                                      ),
                                      Center(
                                          child: kUpdateProfile),
                                      //----------------ADD IMAGE---------------
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                            width: 15 * SizeConfig.imageSizeMultiplier,
                                            height: 15 * SizeConfig.textMultiplier,
                                              child: RawMaterialButton(
                                                shape: CircleBorder(),
                                                elevation: 0.0,
                                                child: SvgPicture.asset('images/boy.svg'),
                                                onPressed: (){},
                                              ),),
                                          RaisedButton(
                                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                                                elevation: 5.0,
                                                color: const Color(0XFF0F33B8),
                                                onPressed: (){},
                                                child: kAddImage,),
                                        ],
                                      ),
                                      //--------------USER DETAILS--------------
                                      ListTile(
                                          title: TextFormField(
                                            decoration: InputDecoration(
                                              hintText: 'Full Name',
                                              labelText: 'Enter your Name',
                                              labelStyle: TextStyle(
                                                fontFamily: "WorkSansSemiBold",
                                                fontSize: 2.5 * SizeConfig.textMultiplier,
                                                color: const Color(0xffA9A9A9),),
                                            ),
                                            keyboardType: TextInputType.text,
                                          ),
                                        ),
                                      ListTile(
                                          title: TextFormField(
                                            decoration: InputDecoration(
                                              hintText: 'User Name',
                                              labelText: 'Enter your User Name',
                                              labelStyle: TextStyle(
                                                fontFamily: "WorkSansSemiBold",
                                                fontSize: 2.5 * SizeConfig.textMultiplier,
                                                color: const Color(0xffA9A9A9),),
                                            ),
                                            keyboardType: TextInputType.emailAddress,
                                          ),
                                        ),
                                      ListTile(
                                          title: TextFormField(
                                            decoration: InputDecoration(
                                              hintText: 'Date of Birth',
                                              labelText: 'Enter your DOB',
                                              labelStyle: TextStyle(
                                                fontFamily: "WorkSansSemiBold",
                                                fontSize: 2.5 * SizeConfig.textMultiplier,
                                                color: const Color(0xffA9A9A9),),
                                            ),
                                            keyboardType: TextInputType.datetime,
                                          ),
                                        ),
                                      ListTile(
                                          title: TextFormField(
                                            decoration: InputDecoration(
                                              hintText: 'Referal Code',
                                              labelText: 'Friend Referal Code',
                                              labelStyle: TextStyle(
                                                fontFamily: "WorkSansSemiBold",
                                                fontSize: 2.5 * SizeConfig.textMultiplier,
                                                color: const Color(0xffA9A9A9),),
                                            ),
                                            keyboardType: TextInputType.phone,
                                          ),
                                        ),
                                      //---------------- GENDER ----------------
                                      FlatButton(
                                        onPressed: (){},
                                          child: kGenderBlack,
                                        ),
                                      //------------ Male & Female -------------
                                      Row(
                                        children: <Widget>[
                                          Container(
                                            width: 15 * SizeConfig.imageSizeMultiplier,
                                            height: 15 * SizeConfig.textMultiplier,
                                            child: RawMaterialButton(
                                              shape: CircleBorder(),
                                              fillColor: const Color(0XFFECECEC),
                                              elevation: 0.0,
                                              child: SvgPicture.asset('images/boy.svg'),
                                              onPressed: (){},
                                            ),
                                          ),
                                          FlatButton(
                                            onPressed: (){},
                                            child: kMaleHome,
                                          ),
                                          Container(
                                            width: 15 * SizeConfig.imageSizeMultiplier,
                                            height: 15 * SizeConfig.textMultiplier,
                                            child: SvgPicture.asset('images/girl.svg'),
                                          ),
                                          FlatButton(
                                            onPressed: (){},
                                            child: kFemaleHome,
                                          ),
                                        ],
                                      ),
                                      //-------------- PREFER TIME -------------
                                      FlatButton(
                                          onPressed: (){},
                                          child: kPreferTime,
                                        ),
                                      //------ Four Cards of Prefer Time -------
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
                                        height: 3 * SizeConfig.textMultiplier,
                                      ),
                                      //------------------ CLUB ----------------
                                      Container(
                                          child:  kClubFilter,
                                        ),
                                      //---------------Select Club--------------
                                      Container(
                                          child:  FlatButton(
                                              color: Colors.transparent,
                                              onPressed: (){},
                                              child: kSelectClubFilter),
                                        ),
                                      SizedBox(
                                        height: 3 * SizeConfig.textMultiplier,
                                      ),
                                      //---------------Next Button--------------
                                      Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                          height: 8 * SizeConfig.textMultiplier,
                                          width: 90 * SizeConfig.imageSizeMultiplier,
                                            child: RaisedButton(
                                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                                              elevation: 10.0,
                                              color: const Color(0XFF0F33B8),
                                              onPressed: (){
                                                Navigator.pushReplacementNamed(context, SportsType.id);
                                              },
                                              child: kNext,
                                            ),
                                          ),
                                      ),
                                      SizedBox(
                                        height: 2 * SizeConfig.textMultiplier,
                                      ),
                                    ],
                                  ),
                                ],
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
