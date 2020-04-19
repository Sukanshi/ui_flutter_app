import 'package:flutter/material.dart';
import 'package:game_app/Constants/size_config.dart';
import 'HomePage.dart';

class LoginSecondPage extends StatefulWidget {
  static const String id = 'LoginSecondPage';
  @override
  _LoginSecondPageState createState() => _LoginSecondPageState();
}

class _LoginSecondPageState extends State<LoginSecondPage> {
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

  static final kNext = Text("NEXT",
    style: TextStyle(
      fontSize: 3.26 * SizeConfig.textMultiplier,
      color: Colors.white,
      fontWeight: FontWeight.w400,
    ),);

  static final kLoginStatement2 = Text('An OTP has been sent to you via SMS',
    textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: 2.95 * SizeConfig.textMultiplier,
    ),);

  static final kLoginStatement3 = Text('+91-XXXXXXXXXX',
    textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: 2.95 * SizeConfig.textMultiplier,
    ),);

  static final kTime = Text(
    '0.30',
    style: TextStyle(
      fontSize: 2.95 * SizeConfig.textMultiplier,
      color: Colors.black87,
      fontWeight: FontWeight.w700,
    ),
  );

  static final kResendOTP = Text("Resend OTP",
    style: TextStyle(
      fontSize: 2.95 * SizeConfig.textMultiplier,
      color: Colors.grey,
      fontWeight: FontWeight.w600,
    ),);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
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
                                height: 20 * SizeConfig.textMultiplier,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('images/topheader.png',),
                                        fit: BoxFit.cover
                                    ))),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(
                                      height: 12.75 * SizeConfig.textMultiplier,
                                    ),
                                     Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            kRac,
                                            kKonnect,
                                          ],
                                        ),
                                    SizedBox(
                                      height: 8.75 * SizeConfig.textMultiplier,
                                    ),
                                    kLoginStatement2,
                                    kLoginStatement3,
                                    SizedBox(
                                      height: 6.75 * SizeConfig.textMultiplier,
                                    ),
                                     ListTile(
                                        title: TextFormField(
                                          textAlign: TextAlign.center,
                                          decoration: InputDecoration(
                                            hintText: 'XXXXX',
                                            hintStyle: TextStyle(
                                              fontFamily: "WorkSansSemiBold",
                                              fontSize: 22.0,
                                              color: const Color(0xffA9A9A9),),
                                          ),
                                          keyboardType: TextInputType.phone,
                                        ),
                                      ),
                                    SizedBox(
                                      height: 2.75 * SizeConfig.textMultiplier,
                                    ),
                                    kTime,
                                    SizedBox(
                                      height: 2.75 * SizeConfig.textMultiplier,
                                    ),
                                    FlatButton(
                                      color: Colors.transparent,
                                      onPressed: (){},
                                      child: kResendOTP,
                                    ),
                                    SizedBox(
                                      height: 2.75 * SizeConfig.textMultiplier,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 24.0),
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
                                                  Navigator.pushReplacementNamed(context, HomePage.id);
                                                },
                                                child: kNext,
                                              ),
                                            ),
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
      ),
    );
  }
}


