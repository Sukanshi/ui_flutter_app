import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:game_app/ScreensPhaseTwo/ChatScreenOne.dart';
import 'package:game_app/ScreensPhaseThree/Notice.dart';
import 'ScreensPhaseOne/RackonnectOne.dart';
import 'ScreensPhaseOne/ConnectionFirst.dart';
import 'Constants/size_config.dart';

class GroupChat extends StatefulWidget {
  static const String id = 'GroupChat';
  @override
  _GroupChatState createState() => _GroupChatState();
}

class _GroupChatState extends State<GroupChat> {

  static final kSGroup = Text('Sagar\'s Group',
    style: TextStyle(
        fontSize: 2.5 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w600,
        color: Colors.black
    ),);

  static final kVishankaSmall = Text('VISHANKA SINGH',
    style: TextStyle(
        fontSize: 2.5 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w600,
        color: Colors.black
    ),);

  static final kBadalSmall = Text('Badal Thukral',
    style: TextStyle(
        fontSize: 2.5 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w600,
        color: Colors.black
    ),);

  static final kAnshulSmall = Text('Anshul Srivastava',
    style: TextStyle(
        fontSize: 2.5 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w600,
        color: Colors.black
    ),);

  static final kTimeSmall = Text('3:45 pm',
    style: TextStyle(
        fontSize: 2 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w400,
        color: Colors.grey
    ),);

  static final kChat = Text('CHAT',
    style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 3 * SizeConfig.textMultiplier,
        color: Colors.white
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
                          title: kChat,
                          backgroundColor: const Color(0XFF0F33B8),
                        ),
                        body: ListView(
                          children: ListTile.divideTiles(
                            context: context,
                            tiles: [
                              Stack(
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: <Widget>[
                                      //---------------------Search Button------------------------
                                      Padding(
                                        padding: EdgeInsets.all(5.0),
                                        child: Container(
                                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                                          color: Colors.grey[200],
                                          height: 6 * SizeConfig.textMultiplier,
                                          child: FlatButton(
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                                            color: Colors.white,
                                            onPressed: (){},
                                            child: TextFormField(
                                              decoration: InputDecoration.collapsed(
                                                hintText: 'Search for players',
                                                hintStyle: TextStyle(
                                                  fontFamily: "WorkSansSemiBold",
                                                  fontSize: 3 * SizeConfig.textMultiplier,
                                                  color: Colors.grey,),
                                              ),
                                              keyboardType: TextInputType.text,
                                            ),
                                          ),
                                        ),
                                      ),
                                      //-------------------------Player Details-------------------
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              height: 8 * SizeConfig.textMultiplier,
                                              width: 100 * SizeConfig.imageSizeMultiplier,
                                              child: Center(
                                                child: Card(
                                                  elevation: 2.0,
                                                  child: Row(
                                                    children: <Widget>[
                                                      SizedBox(
                                                        height: 1 * SizeConfig.textMultiplier,
                                                      ),
                                                      Container(
                                                        padding: EdgeInsets.all(4.0),
                                                        width: 10 * SizeConfig.imageSizeMultiplier,
                                                        height: 10 * SizeConfig.textMultiplier,
                                                        child: RawMaterialButton(
                                                          shape: CircleBorder(),
                                                          fillColor: const Color(0XFFECECEC),
                                                          elevation: 0.0,
                                                          child: Icon(
                                                            Icons.add,
                                                            size: 3.5 * SizeConfig.textMultiplier,
                                                            color: Colors.blueGrey,
                                                          ),
                                                          onPressed: (){},
                                                        ),
                                                      ),
                                                      FlatButton(
                                                          onPressed: (){},
                                                          child: kSGroup),
                                                      Spacer(),
                                                      Align(
                                                        alignment: Alignment.centerLeft,
                                                        child: FlatButton(
                                                            onPressed: (){},
                                                            child: kTimeSmall),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              height: 8 * SizeConfig.textMultiplier,
                                              width: 100 * SizeConfig.imageSizeMultiplier,
                                              child: Center(
                                                child: Card(
                                                  elevation: 2.0,
                                                  child: Row(
                                                    children: <Widget>[
                                                      SizedBox(
                                                        height: 1 * SizeConfig.textMultiplier,
                                                      ),
                                                      Container(
                                                        padding: EdgeInsets.all(4.0),
                                                        width: 10 * SizeConfig.imageSizeMultiplier,
                                                        height: 10 * SizeConfig.textMultiplier,
                                                        child: RawMaterialButton(
                                                          shape: CircleBorder(),
                                                          fillColor: const Color(0XFFECECEC),
                                                          elevation: 0.0,
                                                          child: Icon(
                                                            Icons.add,
                                                            size: 3.5 * SizeConfig.textMultiplier,
                                                            color: Colors.blueGrey,
                                                          ),
                                                          onPressed: (){},
                                                        ),
                                                      ),
                                                      FlatButton(
                                                          onPressed: (){},
                                                          child: kVishankaSmall),
                                                      Spacer(),
                                                      Align(
                                                        alignment: Alignment.centerLeft,
                                                        child: FlatButton(
                                                              onPressed: (){},
                                                              child: kTimeSmall),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              height: 8 * SizeConfig.textMultiplier,
                                              width: 100 * SizeConfig.imageSizeMultiplier,
                                              child: Center(
                                                child: Card(
                                                  elevation: 2.0,
                                                  child: Row(
                                                    children: <Widget>[
                                                      SizedBox(
                                                        height: 1 * SizeConfig.textMultiplier,
                                                      ),
                                                      Container(
                                                        padding: EdgeInsets.all(4.0),
                                                        width: 10 * SizeConfig.imageSizeMultiplier,
                                                        height: 10 * SizeConfig.textMultiplier,
                                                        child: RawMaterialButton(
                                                          shape: CircleBorder(),
                                                          fillColor: const Color(0XFFECECEC),
                                                          elevation: 0.0,
                                                          child: Icon(
                                                            Icons.add,
                                                            size: 3.5 * SizeConfig.textMultiplier,
                                                            color: Colors.blueGrey,
                                                          ),
                                                          onPressed: (){},
                                                        ),
                                                      ),
                                                      FlatButton(
                                                          onPressed: (){},
                                                          child: kBadalSmall),
                                                      Spacer(),
                                                      Align(
                                                        alignment: Alignment.centerLeft,
                                                        child: FlatButton(
                                                            onPressed: (){},
                                                            child: kTimeSmall),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              height: 8 * SizeConfig.textMultiplier,
                                              width: 100 * SizeConfig.imageSizeMultiplier,
                                              child: Center(
                                                child: Card(
                                                  elevation: 2.0,
                                                  child: Row(
                                                    children: <Widget>[
                                                      SizedBox(
                                                        height: 1 * SizeConfig.textMultiplier,
                                                      ),
                                                       Container(
                                                          padding: EdgeInsets.all(4.0),
                                                          width: 10 * SizeConfig.imageSizeMultiplier,
                                                          height: 10 * SizeConfig.textMultiplier,
                                                          child: RawMaterialButton(
                                                            shape: CircleBorder(),
                                                            fillColor: const Color(0XFFECECEC),
                                                            elevation: 0.0,
                                                            child: Icon(
                                                                  Icons.add,
                                                                  size: 3.5 * SizeConfig.textMultiplier,
                                                                  color: Colors.blueGrey,
                                                                ),
                                                            onPressed: (){},
                                                          ),
                                                        ),
                                                      FlatButton(
                                                              onPressed: (){},
                                                              child: kAnshulSmall),
                                                      Spacer(),
                                                      Align(
                                                        alignment: Alignment.centerLeft,
                                                        child: FlatButton(
                                                            onPressed: (){},
                                                            child: kTimeSmall),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
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
                                  Navigator.pushReplacementNamed(context, RackonnectOne.id);
                                }, color: Colors.white, iconSize: 4 * SizeConfig.textMultiplier,),),
                              Expanded(child: IconButton(icon: SvgPicture.asset('images/friends.svg', color: Colors.white,
                                height: 4 * SizeConfig.textMultiplier,), onPressed: (){
                                Navigator.pushNamed(context, ConnectionFirst.id);
                              }),),
                              Expanded(child: new Text('')),
                              Expanded(child: IconButton(icon: SvgPicture.asset('images/chat.svg', color: Colors.white,
                                height: 4 * SizeConfig.textMultiplier,), onPressed: (){
                                Navigator.pushNamed(context, ChatScreenOne.id);
                              }),),
                              Expanded(child: IconButton(icon: Icon(Icons.notifications),
                                onPressed: (){
                                  Navigator.pushNamed(context, Notice.id);
                                }, color: Colors.white, iconSize: 4 * SizeConfig.textMultiplier,),),
                            ],
                          ),
                        ),
                        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
                        floatingActionButton: FloatingActionButton(
                          hoverColor: const Color(0XFF0F33B8),
                          onPressed: (){
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