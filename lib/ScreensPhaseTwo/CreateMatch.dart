import 'package:flutter/material.dart';
import 'package:game_app/Constants/size_config.dart';

class CreateMatch extends StatelessWidget {
  static const String id = 'CreateMatch';

  static final kCreateMatch = Text('Create Match',
  style: TextStyle(
    color: Colors.white,
  fontWeight: FontWeight.w600,
  fontSize: 3 * SizeConfig.textMultiplier,
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
                  home: Scaffold(
                    appBar: AppBar(
                      title: Center(
                        child: kCreateMatch,
                      ),
                      backgroundColor: const Color(0XFF0F33B8),
                    ),
                    body: ListView(
                      children: ListTile.divideTiles(
                        context: context,
                        tiles: [
                          Column(
                            children: <Widget>[
                              //----------------Adding an Image-----------------
                              ListTile(
                                  title: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: 'Squash',
                                      labelText: 'Match Type',
                                      labelStyle: TextStyle(
                                        fontFamily: "WorkSansSemiBold",
                                        fontSize: 2.5 * SizeConfig.textMultiplier,
                                        color: const Color(0xffA9A9A9),),
                                    ),
                                    keyboardType: TextInputType.text,
                                  ),
                                ),
                              //--List of Information that needs to be provided-
                              ListTile(
                                  title: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: 'Match Name',
                                      labelText: 'Match Name',
                                      labelStyle: TextStyle(
                                        fontFamily: "WorkSansSemiBold",
                                        fontSize:  2.5 * SizeConfig.textMultiplier,
                                        color: const Color(0xffA9A9A9),),
                                    ),
                                    keyboardType: TextInputType.text,
                                  ),
                                ),
                              ListTile(
                                  title: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: 'Select Play Arena',
                                      labelText: 'Location',
                                      labelStyle: TextStyle(
                                        fontFamily: "WorkSansSemiBold",
                                        fontSize:  2.5 * SizeConfig.textMultiplier,
                                        color: const Color(0xffA9A9A9),),
                                      suffixIcon: IconButton(
                                        onPressed: (){},
                                        icon: Icon(Icons.edit),
                                        iconSize:  3.5 * SizeConfig.textMultiplier,)
                                    ),
                                    keyboardType: TextInputType.text,
                                  ),
                                ),
                              ListTile(
                                  title: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: 'Choose Match Date',
                                      labelText: 'Match Date',
                                      labelStyle: TextStyle(
                                        fontFamily: "WorkSansSemiBold",
                                        fontSize:  2.5 * SizeConfig.textMultiplier,
                                        color: const Color(0xffA9A9A9),),
                                      suffixIcon: IconButton(
                                        onPressed: (){},
                                        icon: Icon(Icons.date_range),
                                        iconSize:  3.5 * SizeConfig.textMultiplier,),
                                    ),
                                    keyboardType: TextInputType.datetime,
                                  ),
                                ),
                              ListTile(
                                  title: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: 'Choose Start Time',
                                      labelText: 'Match Start Time',
                                      labelStyle: TextStyle(
                                        fontFamily: "WorkSansSemiBold",
                                        fontSize:  2.5 * SizeConfig.textMultiplier,
                                        color: const Color(0xffA9A9A9),),
                                      suffixIcon: IconButton(
                                        onPressed: (){},
                                    icon: Icon(Icons.access_time),
                                    iconSize:  3.5 * SizeConfig.textMultiplier,),

                                    ),
                                    keyboardType: TextInputType.datetime,
                                  ),
                                ),
                               ListTile(
                                  title: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: 'Choose End Time',
                                      labelText: 'Match End Time',
                                      labelStyle: TextStyle(
                                        fontFamily: "WorkSansSemiBold",
                                        fontSize:  2.5 * SizeConfig.textMultiplier,
                                        color: const Color(0xffA9A9A9),),
                                      suffixIcon: IconButton(
                                        onPressed: (){},
                                    icon: Icon(Icons.access_time),
                                    iconSize:  3.5 * SizeConfig.textMultiplier,),
                                    ),
                                    keyboardType: TextInputType.datetime,
                                  ),
                                ),
                              SizedBox(
                                height: 12 * SizeConfig.textMultiplier,
                              ),
                              //-----------------------Create Match Button--------------------------
                              Container(
                                height: 8 * SizeConfig.textMultiplier,
                                width: 100 * SizeConfig.imageSizeMultiplier,
                                child: RaisedButton(
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                                    elevation: 10.0,
                                    color: const Color(0XFF0F33B8),
                                    onPressed: (){
                                      AlertBoxTwo(context);
                                    },
                                    child: kCreateMatch,
                                ),
                              ),
                              SizedBox(
                                height: 6 * SizeConfig.textMultiplier,
                              ),
                            ],
                          ),
                        ],
                      ).toList(),
                    ),
                  ),
                );
              }
          );
        }
    );
  }
}

void AlertBoxTwo (BuildContext context){
   final kOk = Text("OK",
    style: TextStyle(
      color: const Color(0XFF0F33B8),
      fontSize: 2.5 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w500,
    ),
  );

   final kSuccessAdded = Text("Successfully Added",
     style: TextStyle(
       color: Colors.white,
       fontSize: 2 * SizeConfig.textMultiplier,
       fontWeight: FontWeight.w500,
     ),
   );

  var alertDialogue = AlertDialog(
    title: Align(
        alignment: Alignment.center,
        child: Container(
            height: 30 * SizeConfig.textMultiplier,
            width: 40 * SizeConfig.imageSizeMultiplier,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: const Color(0XFF0F33B8),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: kSuccessAdded,
                ),
                SizedBox(
                  height: 2 * SizeConfig.textMultiplier,
                ),
                Container(
                  height: 4 * SizeConfig.textMultiplier,
                  width: 18 * SizeConfig.imageSizeMultiplier,
                  child: RaisedButton(
                    elevation: 4.0,
                    color: Colors.white,
                    onPressed: (){
                      Navigator.pushReplacementNamed(context, CreateMatch.id);
                    },
                    child: kOk,
                  ),
                )
              ],
            ),
          ),
      ),
    backgroundColor: Colors.transparent,
  );

  showDialog(
      context: context,
      builder: (BuildContext context){
        return alertDialogue;
      });
}

