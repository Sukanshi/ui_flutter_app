import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'Constants/size_config.dart';

class BadmintonGroup extends StatefulWidget {
  static const String id = 'BadmintonGroup';
  @override
  _BadmintonGroupState createState() => _BadmintonGroupState();
}

class _BadmintonGroupState extends State<BadmintonGroup> {

  static final kRacSmall = Text('RAC',
    style: TextStyle(
        fontSize: 2 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w500,
        color: Colors.white
    ),);

  static final kKonnectSmall = Text('KONNECT',
    style: TextStyle(
      fontSize: 2 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w500,
      color: const Color(0XFF32CD32),
    ),);

  static final kSagarBadGroup = Text('Sagar\'s Badminton Group',
  style: TextStyle(
  fontSize: 3 * SizeConfig.textMultiplier,
  fontWeight: FontWeight.w700,
  color: Colors.black,
  ),);

  static final kLoc = Text('Location',
    style: TextStyle(
        fontSize: 2.7 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w500,
        color: Colors.black
    ),);

  static final kLocDetails = Text(' - Deer Park, Hauz Khas Village',
    style: TextStyle(
        fontSize: 2.5 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w500,
        color: Colors.grey
    ),);

  static final kDescription = Text('Description',
    style: TextStyle(
        fontSize: 2.5 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w500,
        color: Colors.black
    ),);

  static final kMem = Text('Members',
    style: TextStyle(
        fontSize: 2.5 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w500,
        color: Colors.black
    ),);

  static final kMemDetails = Text(' - 8',
    style: TextStyle(
        fontSize: 2.5 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w500,
        color: Colors.grey
    ),);

  static final kGroupAdmin = Text('Group Admin',
    style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w600,
        fontSize: 2.5 * SizeConfig.textMultiplier,
    ),);

  static final kGroupMembers = Text('Group Members',
    style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w600,
        fontSize: 2.5 * SizeConfig.textMultiplier,
    ),);

  static final kSagarChaudhary = Text('Sagar Chaudhary',
    style: TextStyle(
        fontSize: 2.5 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w600,
        color: Colors.black
    ),);

  static final kSemiPro = Text('Squash . Semi Pro',
    style: TextStyle(
        fontSize: 2 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w400,
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
                          elevation: 0.00,
                          backgroundColor: const Color(0XFF0F33B8),
                          flexibleSpace: FlexibleSpaceBar(
                            centerTitle: true,
                          ),
                          bottom: PreferredSize(
                            preferredSize: Size.square(20.0),
                            child: TabBar(
                              tabs: [
                                Text('CHAT', style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 2.0 * SizeConfig.textMultiplier,
                                    color: Colors.white
                                ),),
                                Text('LEADERBOARD', style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 2.0 * SizeConfig.textMultiplier,
                                    color: Colors.white
                                ),),
                                Text('TOURNAMENTS', style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 2.0 * SizeConfig.textMultiplier,
                                    color: Colors.white
                                ),),
                              ],
                            ),
                          ),
                        ),
                        body:  ListView(
                          children: ListTile.divideTiles(
                            context: context,
                            tiles: [
                              //-----------------Adding an Image----------------
                              Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: IconButton(
                                      onPressed: (){},
                                      icon: Align(
                                        alignment: Alignment.topRight,
                                        child: Icon(Icons.more_vert,
                                          color: Colors.grey,
                                          size: 5 * SizeConfig.textMultiplier,),
                                      ),
                                    ),
                                  ),
                                  RawMaterialButton(
                                    padding: EdgeInsets.all(16.0),
                                      onPressed: (){},
                                      shape: CircleBorder(),
                                      fillColor: const Color(0XFF0F33B8),
                                      elevation: 0.0,
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: <Widget>[
                                            Image.asset('images/raconnect.png',
                                              width: 12.0 * SizeConfig.imageSizeMultiplier,
                                              height: 10.0 * SizeConfig.textMultiplier,),
                                                 Row(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: <Widget>[
                                                    kRacSmall,
                                                    kKonnectSmall,
                                                  ],
                                                )
                                          ],
                                        ),
                                      ),
                                    ),
                                  SizedBox(
                                    height: 2 * SizeConfig.textMultiplier,
                                  ),
                                ],
                              ),
                              ),
                              //----------------------Data----------------------
                          Container(
                            height: 30 * SizeConfig.textMultiplier,
                            width: 26 * SizeConfig.textMultiplier,
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 2 * SizeConfig.textMultiplier,
                                ),
                                Center(
                                    child: kSagarBadGroup),
                                SizedBox(
                                  height: 2 * SizeConfig.textMultiplier,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                                  child: Row(
                                    children: <Widget>[
                                      kLoc,
                                      kLocDetails,
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 2 * SizeConfig.textMultiplier,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                                  child: Row(
                                    children: <Widget>[
                                      kMem,
                                      kMemDetails,
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 2 * SizeConfig.textMultiplier,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                                  child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: kDescription),
                                ),
                                SizedBox(
                                  height: 5 * SizeConfig.textMultiplier,
                                ),
                              ],
                            ),
                          ),
                                  Container(
                                    height: 12 * SizeConfig.textMultiplier,
                                    width: 100 * SizeConfig.imageSizeMultiplier,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            FlatButton(
                                                onPressed: (){},
                                                child: kGroupAdmin),
                                            Spacer(),
                                            FlatButton(
                                                onPressed: (){},
                                                child: kGroupMembers),

                                          ],
                                        ),
                                  ),
                              //------------------Description-------------------
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    color: Colors.transparent,
                                    height: 12 * SizeConfig.textMultiplier,
                                    width: 100 * SizeConfig.imageSizeMultiplier,
                                    child: Center(
                                      child: Row(
                                        children: <Widget>[
                                          Padding(
                                            padding: EdgeInsets.symmetric(horizontal: 15.0),
                                            child: Container(
                                              height: 10 * SizeConfig.textMultiplier,
                                              width: 10 * SizeConfig.imageSizeMultiplier,
                                              child: RawMaterialButton(
                                                shape: CircleBorder(),
                                                fillColor: const Color(0XFFECECEC),
                                                elevation: 0.0,
                                                child: Icon(
                                                  Icons.add,
                                                  size: 4 * SizeConfig.textMultiplier,
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
                                              kSagarChaudhary,
                                              SizedBox(
                                                height: 0.2 * SizeConfig.textMultiplier,
                                              ),
                                              kSemiPro
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              )

                            ],
                          ).toList(),
                        ),
                        bottomNavigationBar: BottomAppBar(
                          shape: CircularNotchedRectangle(),
                          notchMargin: 4.0,
                          color: const Color(0XFF0F33B8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Expanded(child: IconButton(icon: Icon(Icons.flash_on), onPressed: (){},
                                color: Colors.white, iconSize: 4 * SizeConfig.textMultiplier,),),
                              Expanded(child: IconButton(icon: SvgPicture.asset('images/filter.svg', color: Colors.white,
                                height:  4 * SizeConfig.textMultiplier,), onPressed: (){}),),
                              Expanded(child: new Text('')),
                              Expanded(child: IconButton(icon: SvgPicture.asset('images/chat.svg', color: Colors.white,
                                height:  4 * SizeConfig.textMultiplier,), onPressed: (){}),),
                              Expanded(child: IconButton(icon: Icon(Icons.notifications), onPressed: (){},
                                color: Colors.white, iconSize:  4 * SizeConfig.textMultiplier,),),
                            ],
                          ),
                        ),
                        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
                        floatingActionButton: FloatingActionButton(
                          foregroundColor: Colors.white,
                          onPressed: (){},
                          child: Icon(Icons.add,
                            size:  6 * SizeConfig.textMultiplier,
                            color: Colors.white,),
                          backgroundColor: const Color(0XFF0F33B8),),
                      ),
                    )
                );
              }
          );
        }
    );
  }
}
