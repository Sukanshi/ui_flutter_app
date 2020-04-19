import 'package:flutter/material.dart';
import 'package:game_app/Constants/ConstantTextsButtons.dart';
import 'package:game_app/ScreensPhaseFour/CreateTournament.dart';
import 'ConnectionFirst.dart';
import 'package:game_app/ScreensPhaseFour/ChatScreenTwo.dart';
import 'package:game_app/ScreensPhaseTwo/CreateGroup.dart';
import 'package:game_app/ScreensPhaseTwo/CreateMatch.dart';
import 'package:game_app/ScreensPhaseThree/Notice.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:game_app/Constants/size_config.dart';

class RackonnectOne extends StatefulWidget {
  static const String id = 'RackonnectOne';
  const RackonnectOne({Key key}) : super(key: key);
  @override
  _RackonnectOneState createState() => _RackonnectOneState();
}

class _RackonnectOneState extends State<RackonnectOne> with SingleTickerProviderStateMixin {

  static final kDemoDataSmall = Text('Demo data',
    style: TextStyle(
        fontSize: 2 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w600,
        color: Colors.black
    ),);

  static final kVikram = Text('VIKRAMJEET SINGH',
    style: TextStyle(
        fontSize: 2 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w600,
        color: Colors.black
    ),);

  static final kSemiProSmall = Text('Squash . Semi Pro',
    style: TextStyle(
        fontSize: 2 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w400,
        color: const Color(0XFF0F33B8)
    ),);

  static final kPlayArenaTournament = Text('Play Arena - Bengaluru',
    style: TextStyle(
        fontSize: 2 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w600,
        color: Colors.black
    ),);

  static final kLocationSmall = Text('LOCATION',
    style: TextStyle(
        fontSize: 2 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w400,
        color: Colors.grey
    ),);

  static final kConnect = Text('Connect',
    style: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 1.5 * SizeConfig.textMultiplier,
        color: Colors.white
    ),);

  final List<Tab> myTabs = <Tab>[
    Tab(text: 'Singles'),
    Tab(text: 'Doubles'),
    Tab(text: 'LeaderBoard'),
  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
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
                        key: _scaffoldKey,
                        backgroundColor: Colors.grey[200],
                        body:
                        ListView(
                          children: ListTile.divideTiles(
                            context: context,
                            tiles: [
                              Stack(
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: <Widget>[
                                      //--------------Search Button-------------
                                      Padding(
                                        padding: EdgeInsets.all(5.0),
                                        child: Container(
                                          color: Colors.grey[200],
                                          height: 7 * SizeConfig.textMultiplier,
                                          width: 70 * SizeConfig.imageSizeMultiplier,
                                          child: FlatButton(
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                                            color: Colors.white,
                                            onPressed: (){},
                                            child: TextFormField(
                                              decoration: InputDecoration.collapsed(
                                                hintText: 'Search for players',
                                                hintStyle: TextStyle(
                                                  fontFamily: "WorkSansSemiBold",
                                                  fontSize: 2.5 * SizeConfig.textMultiplier,
                                                  color: Colors.grey,),
                                              ),
                                              keyboardType: TextInputType.text,
                                            ),
                                          ),
                                        ),
                                      ),
                                      //---------------Player Details-----------
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
                                                        kDemoDataSmall,
                                                        kSemiProSmall,
                                                        kLocationSmall,
                                                        kPlayArenaTournament,
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                Align(
                                                  alignment: Alignment.centerRight,
                                                  child: Column(
                                                    children: <Widget>[
                                                      Image.asset('images/squash2.png',
                                                        height: 9 * SizeConfig.textMultiplier,
                                                        width: 9 * SizeConfig.imageSizeMultiplier,),
                                                      SizedBox(
                                                        height: 3 * SizeConfig.textMultiplier,
                                                        width: 22 * SizeConfig.imageSizeMultiplier,
                                                        child: FlatButton(
                                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                                                          color: const Color(0XFF0F33B8),
                                                          onPressed: (){},
                                                          child: kConnect,
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
                                      //--------------Player 2 Details----------
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
                                                        kVikram,
                                                        kSemiProSmall,
                                                        kLocationSmall,
                                                        kPlayArenaTournament,
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                Align(
                                                  alignment: Alignment.centerRight,
                                                  child: Column(
                                                    children: <Widget>[
                                                      Image.asset('images/squash2.png',
                                                        height: 9 * SizeConfig.textMultiplier,
                                                        width: 9 * SizeConfig.imageSizeMultiplier,),
                                                      SizedBox(
                                                        height: 3 * SizeConfig.textMultiplier,
                                                        width: 22 * SizeConfig.imageSizeMultiplier,
                                                        child: FlatButton(
                                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                                                          color: const Color(0XFF0F33B8),
                                                          onPressed: (){},
                                                          child: kConnect,
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
                                  ),
                                ],
                              ),
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
                              Expanded(child: IconButton(icon: Icon(Icons.home),
                                onPressed: (){
                                }, color: Colors.white, iconSize:  4 * SizeConfig.textMultiplier,),),
                              Expanded(child: IconButton(icon: SvgPicture.asset('images/friends.svg', color: Colors.white,
                                height:  4 * SizeConfig.textMultiplier,), onPressed: (){
                                Navigator.pushNamed(context, ConnectionFirst.id);
                              }),),
                              Expanded(child: new Text('')),
                              Expanded(child: IconButton(icon: SvgPicture.asset('images/chat.svg', color: Colors.white,
                                height:  4 * SizeConfig.textMultiplier,), onPressed: (){
                                Navigator.pushNamed(context, ChatScreenTwo.id);
                              }),),
                              Expanded(child: IconButton(icon: Icon(Icons.notifications),
                                onPressed: (){
                                  Navigator.pushReplacementNamed(context, Notice.id);
                                }, color: Colors.white, iconSize:  4 * SizeConfig.textMultiplier,),),
                            ],
                          ),
                        ),
                        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
                        floatingActionButton: FloatingActionButton(
                          hoverColor: const Color(0XFF0F33B8),
                          onPressed: (){
                            AlertBoxOne(context);
                          },
                          child: Icon(Icons.add,
                            size: 6 * SizeConfig.textMultiplier,
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
class SliverMultilineAppBar extends StatelessWidget {
  final String title;
  final Widget leading;
  final List<Widget> actions;

  SliverMultilineAppBar({this.title, this.leading, this.actions});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    double availableWidth = mediaQuery.size.width - 160;
    if (actions != null) {
      availableWidth -= 32 * actions.length;
    }
    if (leading != null) {
      availableWidth -= 32;
    }
    return SliverAppBar(
      expandedHeight: 120.0,
      forceElevated: true,
      leading: leading,
      actions: actions,
      flexibleSpace: FlexibleSpaceBar(
        title: ConstrainedBox(constraints: BoxConstraints(
          maxWidth: availableWidth,),
          child: Text(title, textScaleFactor: .8,),),),);
  }
}