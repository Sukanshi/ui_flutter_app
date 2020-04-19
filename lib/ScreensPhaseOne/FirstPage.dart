import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:game_app/Constants/size_config.dart';
import 'Login_PageOne.dart';

class FirstPage extends StatefulWidget {
  static const String id = 'FirstPage';
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage>{

  static final kWelcome = Text('welcome',
    style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w700,
      fontSize: 4.75 * SizeConfig.textMultiplier,
    ),
  );

  static final kRac = Text('RAC',
    style: TextStyle(
        fontSize: 3.86 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w700,
        color: Colors.white
    ),
  );

  static final kKonnect = Text('KONNECT',
    style: TextStyle(
      fontSize: 3.86 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w700,
      color: const Color(0XFF32CD32),
    ),
  );

  static final kPlay = Text("LET\'S PLAY",
    style: TextStyle(
      color: Colors.white,
      letterSpacing: 2,
      fontSize: 3.46 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w700,
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
                body: SafeArea(
                          top: true,
                          bottom: true,
                          left: true,
                          right: true,
                          child: Stack(
                            children: <Widget>[
                              Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('images/de.jpg',),
                                      fit: BoxFit.cover
                                    ))),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                         Align(
                                           alignment: Alignment.topCenter,
                                           child: Image.asset('images/ic_launcher.png',
                                                 height: 15 * SizeConfig.textMultiplier,
                                                 width: 30 * SizeConfig.imageSizeMultiplier,),
                                         ),
                                    Align(
                                         alignment: Alignment.topCenter,
                                         child: kWelcome),
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Row(
                                         mainAxisAlignment: MainAxisAlignment.center,
                                         children: <Widget>[
                                          kRac,
                                          kKonnect,
                                 ],
                              ),
                            ),
                                    Spacer(),
                                Align(
                                 alignment: Alignment.bottomCenter,
                                 child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.symmetric(vertical: 16.0),
                                        child: Container(
                                          height: 8.2 * SizeConfig.textMultiplier,
                                          width: 16.2 * SizeConfig.imageSizeMultiplier,
                                          child: RaisedButton(
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                                            elevation: 10.0,
                                            color: const Color(0XFF0F33B8),
                                            onPressed: (){
                                              Navigator.pushReplacementNamed(context, LoginPageOne.id);
                                            },
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: <Widget>[
                                                Spacer(flex: 1),
                                                kPlay,
                                                Spacer(flex: 1),
                                                SvgPicture.asset('images/right-arrow.svg',
                                                  width: 3.8 * SizeConfig.imageSizeMultiplier,
                                                  height: 3.8 * SizeConfig.textMultiplier,
                                                  color: Colors.white,),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                                  ],
                              ),
                            ],
                          ),
                        ),
              ),
            );
          }
        );
      }
    );
      }
  }
