import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game_app/Constants/size_config.dart';

class Location extends StatefulWidget {
  static const String id = 'Location';
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {

  static final kChooseLocation = Text('Choose Location',
    style: TextStyle(
      color: Colors.white,
      fontSize: 3 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w600,
    ),);

  static final kDone = Text('DONE',
    style: TextStyle(
      color: Colors.white,
      fontSize: 2.5 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w600,
    ),);

  static final kLocation = Text("LOCATION",
    style: TextStyle(
      color: Colors.grey,
      fontSize: 2.2 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w400,
    ),);

  static final kAddress = Text("B-2/8 Safdarjung Enclave, New Delhi.",
    style: TextStyle(
      color: const Color(0XFF0F33B8),
      fontSize: 2 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w400,
    ),);

  static final kCurrentLoc = Text("Use Current Location",
    style: TextStyle(
      color: Colors.white,
      fontSize: 2.2 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w400,
    ),);

  static final kMaximum = Text("MAXIMUM RADIUS",
    style: TextStyle(
      color: Colors.grey,
      fontSize: 2.2 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w400,
    ),);

  static final k2Kms = Text("2 KMS",
    style: TextStyle(
      color: Colors.blue[900],
      fontSize: 2.2 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w400,
    ),);

      int kms = 2000;
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
                          title: kChooseLocation,
                          actions: <Widget>[
                            FlatButton(
                                onPressed: (){},
                                child: kDone),
                          ],
                          elevation: 0.00,
                          backgroundColor: const Color(0XFF0F33B8),
                        ),
                        body: ListView(
                          children: ListTile.divideTiles(
                            context: context,
                            tiles: [
                              Container(
                                height: 30 * SizeConfig.textMultiplier,
                                width: 100 * SizeConfig.imageSizeMultiplier,
                                color: const Color(0XFF0F33B8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Center(
                                      child: Container(
                                        height: 10 * SizeConfig.textMultiplier,
                                        width: 90 * SizeConfig.imageSizeMultiplier,
                                        child: RaisedButton(
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
                                          elevation: 0.0,
                                          color: Colors.white,
                                          onPressed: (){},
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[
                                              kLocation,
                                              SizedBox(
                                                height: 6 * SizeConfig.textMultiplier,
                                                width: 90 * SizeConfig.imageSizeMultiplier,
                                                child: FlatButton(
                                                  onPressed: (){},
                                                  child: kAddress,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        IconButton(
                                              icon: Icon(Icons.near_me,
                                                color: Colors.white,
                                                size: 3 * SizeConfig.textMultiplier,),
                                              onPressed: (){}),
                                        FlatButton(
                                          onPressed: (){},
                                          child: kCurrentLoc,
                                        ),
                                      ],
                                    ),
                                    Center(
                                      child: Container(
                                        height: 10 * SizeConfig.textMultiplier,
                                        width: 90 * SizeConfig.imageSizeMultiplier,
                                        child: RaisedButton(
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
                                          elevation: 0.0,
                                          color: Colors.white,
                                          onPressed: (){},
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[
                                              Row(
                                                  children: <Widget>[
                                                    kMaximum,
                                                    Spacer(),
                                                    k2Kms,
                                                  ],
                                              ),
                                              SizedBox(
                                                height: 6 * SizeConfig.textMultiplier,
                                                width: 90 * SizeConfig.imageSizeMultiplier,
                                                child: Slider(value: kms.toDouble(),
                                                    min: 0.00,
                                                    max: 2000.00,
                                                    activeColor: Colors.blue[900],
                                                    inactiveColor: Colors.blue[900],
                                                    onChanged: (double newValue){
                                                      setState(() {
                                                        kms = newValue.round();
                                                      });
                                                    }),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
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
