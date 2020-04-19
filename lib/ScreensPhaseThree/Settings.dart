import 'package:flutter/material.dart';
import 'package:game_app/Constants/size_config.dart';
import 'package:game_app/ScreensPhaseThree/Feedbck.dart';

class Settings extends StatefulWidget {
  static const String id = 'Settings';
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {

  bool _value1 = false;
  bool _value2 = false;

  void _onChanged1(bool value){
    setState(() {
      _value1 = value;

    });
  }
  void _onChanged2(bool value){
    setState(() {
      _value2 = value;

    });
  }

  static final kSmsNotice = Text('SMS NOTIFICATIONS',
    style: TextStyle(
        fontWeight: FontWeight.w600,
        color: Colors.white,
        fontSize: 2 * SizeConfig.textMultiplier,
    ),
  );

  static final kPushNotice = Text('PUSH NOTIFICATIONS',
    style: TextStyle(
        fontWeight: FontWeight.w600,
        color: Colors.white,
        fontSize: 2 * SizeConfig.textMultiplier,
    ),
  );

  static final kSettings = Text('Settings',
  textAlign: TextAlign.center,
  style: TextStyle(
  fontWeight: FontWeight.w600,
  fontSize: 3.5 * SizeConfig.textMultiplier,
  ),);

  static final kSoundSetting = Text('SOUND SETTINGS',
    style: TextStyle(
        color: Colors.grey,
        fontWeight: FontWeight.w700,
        fontSize: 2.5 * SizeConfig.textMultiplier,
    ),);

  static final kNticePreference = Text('NOTIFICATION PREFERENCES',
    style: TextStyle(
        color: Colors.grey,
        fontWeight: FontWeight.w500,
        fontSize: 2.5 * SizeConfig.textMultiplier,
    ),);

  static final kv2 = Text('v2.0',
    style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w900,
        fontSize: 2.80 * SizeConfig.textMultiplier,
    ),);

  static final kDeleteAccount = Text('DELETE ACCOUNT',
    style: TextStyle(
        color: Colors.red,
        fontWeight: FontWeight.w900,
        fontSize: 2.60 * SizeConfig.textMultiplier,
    ),);

  static final kRateUs = Text('RATE US ON PLAY STORE',
    style: TextStyle(
        color: const Color(0XFF0F33B8),
        fontWeight: FontWeight.w900,
        fontSize: 2.60 * SizeConfig.textMultiplier,
    ),);

  static final kSendFeedback = Text('SEND FEEDBACK',
    style: TextStyle(
        color: const Color(0XFF0F33B8),
        fontWeight: FontWeight.w900,
        fontSize: 2.60 * SizeConfig.textMultiplier,
    ),);

  static final kSettingsChats = Text('Chats',
    style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w700,
        fontSize: 2.60 * SizeConfig.textMultiplier,
    ),);

  static final kSettingsNotice = Text('Notifications',
    style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w700,
        fontSize: 2.60 * SizeConfig.textMultiplier,
    ),);

  static final kGameNotice = Text('Game notifications',
    style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w700,
        fontSize: 2.6 * SizeConfig.textMultiplier,
    ),);

  static final kScoreRequest = Text('Scoring requests',
    style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w700,
        fontSize: 2.6 * SizeConfig.textMultiplier,
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
                  home: SafeArea(
                    bottom: true,
                    right: false,
                    left: false,
                    top: true,
                    child: Scaffold(
                      appBar: AppBar(
                        title: kSettings,
                        backgroundColor: const Color(0XFF0F33B8),
                      ),
                      body: ListView(
                        children: ListTile.divideTiles(
                          context: context,
                          tiles: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    height: 3 * SizeConfig.textMultiplier,
                                  ),
                                  FlatButton(
                                    onPressed: (){},
                                      child: kNticePreference),
                                  SizedBox(
                                    height: 2 * SizeConfig.textMultiplier,
                                  ),
                                  FlatButton(
                                    onPressed: (){},
                                      child: kGameNotice),
                                  //------------First Two Notification------------
                                  Row(
                                    children: <Widget>[
                                      Spacer(
                                        flex: 1,
                                      ),
                                      Container(
                                        height: 5 * SizeConfig.textMultiplier,
                                        width: 26 * SizeConfig.textMultiplier,
                                        child: FlatButton(
                                            onPressed: (){},
                                            color: const Color(0XFF0F33B8),
                                            child: kPushNotice
                                        ),
                                      ),
                                      Spacer(flex: 2,),
                                      Container(
                                        height: 5 * SizeConfig.textMultiplier,
                                        width: 26 * SizeConfig.textMultiplier,
                                        child: FlatButton(
                                            onPressed: (){},
                                            color: const Color(0XFF0F33B8),
                                            child: kSmsNotice
                                        ),
                                      ),
                                      Spacer(
                                        flex: 1,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 2 * SizeConfig.textMultiplier,
                                  ),
                                  FlatButton(
                                      onPressed: (){},
                                      child: kScoreRequest),
                                  Row(
                                    children: <Widget>[
                                      Spacer(
                                        flex: 1,
                                      ),
                                      Container(
                                        height: 5 * SizeConfig.textMultiplier,
                                        width: 26 * SizeConfig.textMultiplier,
                                          child: FlatButton(
                                              onPressed: (){},
                                              color: const Color(0XFF0F33B8),
                                              child: kPushNotice
                                          ),
                                        ),
                                      Spacer(flex: 2,),
                                      Container(
                                        height: 5 * SizeConfig.textMultiplier,
                                        width: 26 * SizeConfig.textMultiplier,
                                          child: FlatButton(
                                              onPressed: (){},
                                              color: const Color(0XFF0F33B8),
                                              child: kSmsNotice
                                          ),
                                        ),
                                      Spacer(
                                        flex: 1,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 1 * SizeConfig.textMultiplier,
                                  ),
                                  Divider(
                                    color: Colors.grey,
                                  ),
                                  SizedBox(
                                    height: 1 * SizeConfig.textMultiplier,
                                  ),
                                  FlatButton(
                                      onPressed: (){},
                                      child: kSoundSetting),
                                  SizedBox(
                                    height: 1 * SizeConfig.textMultiplier,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Spacer(),
                                      kSettingsNotice,
                                      Spacer(
                                        flex: 6,
                                      ),
                                      Switch(
                                            activeColor: Colors.green,
                                            value: _value1,
                                            onChanged: (bool value){_onChanged1(value);}),
                                      Spacer(),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 1 * SizeConfig.textMultiplier,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Spacer(),
                                      kSettingsChats,
                                      Spacer(
                                        flex: 7,
                                      ),
                                      Switch(
                                            activeColor: Colors.green,
                                            value: _value2,
                                            onChanged: (bool value){_onChanged2(value);}),
                                      Spacer(),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 1 * SizeConfig.textMultiplier,
                                  ),
                                  Divider(
                                    color: Colors.grey,
                                  ),
                                  SizedBox(
                                    height: 1 * SizeConfig.textMultiplier,
                                  ),
                                   FlatButton(
                                      onPressed: (){
                                        Navigator.pushReplacementNamed(context, Feedbck.id);
                                      },
                                      child: kSendFeedback,
                                    ),
                                  FlatButton(
                                      onPressed: (){},
                                      child: kRateUs,
                                    ),
                                  FlatButton(
                                    onPressed: (){},
                                    child: kDeleteAccount,
                                  ),
                                  SizedBox(
                                    height: 2 * SizeConfig.textMultiplier,
                                  ),
                                  FlatButton(
                                    onPressed: (){},
                                      child: kv2),
                                ],
                              ),
                          ],
                        ).toList(),
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
