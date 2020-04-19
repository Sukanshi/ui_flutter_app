import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game_app/Constants/size_config.dart';
import 'Login_SecondPage.dart';

class LoginPageOne extends StatefulWidget {
  static const String id = 'LoginPageOne';
  @override
  _LoginPageOneState createState() => _LoginPageOneState();
}

class _LoginPageOneState extends State<LoginPageOne> {

  static final kRac = Text('RAC',
    style: TextStyle(
        fontSize: 4 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w700,
        color: Colors.white
    ),
  );

  static final kKonnect = Text('KONNECT',
    style: TextStyle(
      fontSize: 4 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w700,
      color: const Color(0XFF32CD32),
    ),
  );

  static final kLoginStatement1 = Text('Please enter your mobile number to get RACKONNECTED',
    textAlign: TextAlign.center,
    maxLines: 2,
    style: TextStyle(
      fontSize: 3.06 * SizeConfig.textMultiplier,
    ),);

  static final k91 = Text('+91',
    style: TextStyle(
        fontFamily: "WorkSansSemiBold",
        fontSize: 3.06 * SizeConfig.textMultiplier,
        color: Colors.black,
        fontWeight: FontWeight.w700
    ),);

  static final kMobileNumber = Text('Please Enter Your mobile number',
  style: TextStyle(
  fontFamily: "WorkSansSemiBold",
  fontSize: 2.86 * SizeConfig.textMultiplier,
  color: const Color(0xffA9A9A9),
  fontWeight: FontWeight.w600),);

  static final kLoginViaOtp = Text("LOGIN VIA OTP",
    style: TextStyle(
        fontSize: 3.06 * SizeConfig.textMultiplier,
        color: Colors.white,
        fontWeight: FontWeight.w400),);

  static final kOrLoginVia = Text('Or Login via',
    style: TextStyle(
      fontFamily: "WorkSansSemiBold",
      fontSize: 2.55 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),);

  static final kFacebook = Text('Facebook',
    style: TextStyle(
      fontFamily: "WorkSansSemiBold",
      fontSize: 2 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),);

  static final kGoogle = Text('Google',
    style: TextStyle(
      fontFamily: "WorkSansSemiBold",
      fontSize: 2 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w500,
      color: Colors.black,
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
                              height: 16 * SizeConfig.textMultiplier,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('images/topheader.png',),
                                      fit: BoxFit.cover
                                  ))),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    height: 9.25 * SizeConfig.textMultiplier,
                                  ),
                                   Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: <Widget>[
                                            kRac,
                                            kKonnect,
                                          ],
                                        ),
                                  SizedBox(
                                    height: 5.75 * SizeConfig.textMultiplier,
                                  ),
                                   Container(
                                      height: 15 * SizeConfig.textMultiplier,
                                      child: kLoginStatement1),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: EdgeInsets.all(7.5),
                                            child: k91,
                                          ),
                                          Container(
                                            color: const Color(0XFF0F33B8),
                                            width: 9.46 * SizeConfig.imageSizeMultiplier,
                                            height: 0.15 * SizeConfig.textMultiplier,),
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                            constraints: BoxConstraints.tightForFinite(),
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: kMobileNumber,
                                            ),
                                          ),
                                          Container(
                                            color: const Color(0XFF0F33B8),
                                            width: 79.46 * SizeConfig.imageSizeMultiplier,
                                            height: 0.15 * SizeConfig.textMultiplier,),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8.15 * SizeConfig.textMultiplier,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 24),
                                    child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.stretch,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.symmetric(vertical: 16.0),
                                                child: Container(
                                                  height: 7.2 * SizeConfig.textMultiplier,
                                                  width: 16.2 * SizeConfig.imageSizeMultiplier,
                                                  child: RaisedButton(
                                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                                                    elevation: 10.0,
                                                    color: const Color(0XFF0F33B8),
                                                    onPressed: (){
                                                      Navigator.pushReplacementNamed(context, LoginSecondPage.id);
                                                    },
                                                    child: kLoginViaOtp,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                  ),
                                  SizedBox(
                                    height: 6.75 * SizeConfig.textMultiplier,
                                  ),
                                      Center(
                                          child: kOrLoginVia,
                                        ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(vertical: 10.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Column(
                                          children: <Widget>[
                                            RaisedButton(
                                              elevation: 5.0,
                                              color: Colors.white,
                                              shape: CircleBorder(),
                                              onPressed: (){},
                                              child: Image.asset('images/google.png',
                                                height: 3 * SizeConfig.textMultiplier,
                                                fit: BoxFit.cover,), // Need to Add Google Image/Icon
                                            ),
                                            kGoogle,
                                          ],
                                        ),
                                        Column(
                                          children: <Widget>[
                                            RaisedButton(
                                              elevation: 5.0,
                                              color: Colors.white,
                                              shape: CircleBorder(),
                                              onPressed: (){},
                                              child: Image.asset('images/facebook.png',
                                                height: 3.5 * SizeConfig.textMultiplier,
                                                fit: BoxFit.cover,), // Need to Add Google Image/Icon
                                            ),
                                            kFacebook,
                                          ],
                                        ),
                                      ],
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
