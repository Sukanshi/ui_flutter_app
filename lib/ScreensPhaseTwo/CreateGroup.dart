import 'package:flutter/material.dart';
import 'package:game_app/Constants/size_config.dart';
import '../ScreensPhaseOne/SportsType.dart';

class CreateGroup extends StatelessWidget {
  static const String id = 'CreateGroup';

  static final kCreateGroup = Text('Create Group',
  style: TextStyle(
    color: Colors.white,
  fontWeight: FontWeight.w600,
  fontSize: 3 * SizeConfig.textMultiplier,
  ),);

  static final kAddImage = Text('Add Image',
  style: TextStyle(
  color: Colors.blueGrey,
  fontSize: 2 * SizeConfig.textMultiplier,
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
                          title: Center(
                            child: kCreateGroup,
                          ),
                          actions: <Widget>[
                            IconButton(
                                icon: Icon(Icons.group),
                                iconSize: 4.5 * SizeConfig.textMultiplier,
                                onPressed: () {}),
                          ],
                          backgroundColor: const Color(0XFF0F33B8),
                        ),
                        body: ListView(
                          children: ListTile.divideTiles(
                            context: context,
                            tiles: [
                              SizedBox(
                                height: 3 * SizeConfig.textMultiplier,
                              ),
                                  //-------------------------Adding an Image----------------------------
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                          height: 14 * SizeConfig.textMultiplier,
                                          child: RawMaterialButton(
                                            shape: CircleBorder(),
                                            fillColor: const Color(0XFFECECEC),
                                            elevation: 0.0,
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[
                                                Icon(
                                                  Icons.add,
                                                  size: 5 * SizeConfig.textMultiplier,
                                                  color: Colors.blueGrey,
                                                ),
                                                kAddImage,
                                              ],
                                            ),
                                            onPressed: (){},
                                          ),
                                        ),
                                    ],
                                  ),
                                  //---------List of Information that needs to be provided--------------
                                  ListTile(
                                    title: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: 'Squash Group Name',
                                        labelText: 'Group Name',
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
                                        hintText: 'Group Type',
                                        labelText: 'Group Type',
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
                                        hintText: 'Select play Arena',
                                        labelText: 'Location',
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
                                        hintText: 'Select Sport',
                                        labelText: 'Sports Type',
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
                                        hintText: 'Description',
                                        labelText: 'Description',
                                        labelStyle: TextStyle(
                                          fontFamily: "WorkSansSemiBold",
                                          fontSize: 2.5 * SizeConfig.textMultiplier,
                                          color: const Color(0xffA9A9A9),),
                                      ),
                                      keyboardType: TextInputType.text,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6 * SizeConfig.textMultiplier,
                                  ),
                                  //-----------------------Create Group Button--------------------------
                                  Container(
                                      height: 8 * SizeConfig.textMultiplier,
                                      width: 100 * SizeConfig.imageSizeMultiplier,
                                      child: RaisedButton(
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                                          elevation: 10.0,
                                          color: const Color(0XFF0F33B8),
                                          onPressed: (){
                                            Navigator.pushNamed(context, SportsType.id);
                                          },
                                          child: kCreateGroup
                                      ),
                                    ),
                              SizedBox(
                                height: 4 * SizeConfig.textMultiplier,
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
