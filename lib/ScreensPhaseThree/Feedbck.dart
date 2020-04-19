import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game_app/Constants/size_config.dart';

class Feedbck extends StatefulWidget {
  static const String id = 'Feedbck';
  @override
  _FeedbckState createState() => _FeedbckState();
}

class _FeedbckState extends State<Feedbck> {

  static final kFeedback = Text('Feedback',
    style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 3.70 * SizeConfig.textMultiplier,
    ),);

  static final kFdk = Text('Feedback',
    style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w700,
        fontSize: 4.5 * SizeConfig.textMultiplier,
    ),);

  static final kExp = Text('How was your Experience',
    style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w700,
        fontSize: 3 * SizeConfig.textMultiplier,
    ),);

  static final kWhyExp = Text('Why was the Experience not awesome',
  style: TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.w700,
  fontSize: 3 * SizeConfig.textMultiplier,
  ),);

  static final kTell = Text('Tell us more.',
    style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w700,
        fontSize: 3 * SizeConfig.textMultiplier,
    ),);

  static final kTellSub = Text('Tell us more',
    style: TextStyle(
      fontFamily: "WorkSansSemiBold",
      fontSize: 3 * SizeConfig.textMultiplier,
      color: const Color(0xffA9A9A9),
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
                        backgroundColor: const Color(0XFF0F33B8),
                        title: kFeedback,
                      ),
                      body: ListView(
                        children: ListTile.divideTiles(
                          context: context,
                          tiles: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  height: 12.70 * SizeConfig.textMultiplier,
                                  child: Center(
                                    child: kFdk,
                                  ),
                                ),
                                Divider(
                                  color: Colors.grey,
                                ),
                                //----------------------About User Experience-------------------
                                FlatButton(
                                    onPressed: (){},
                                    child: kExp),
                                //------------------------------Emoji---------------------------
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Image.asset(
                                      'images/sademo.png',
                                      height: 6.70 * SizeConfig.textMultiplier,
                                      width: 12.70 * SizeConfig.imageSizeMultiplier,),
                                    Image.asset(
                                      'images/emotwo.png',
                                      height: 6.70 * SizeConfig.textMultiplier,
                                      width: 12.70 * SizeConfig.imageSizeMultiplier,),
                                    Image.asset(
                                      'images/emothree.png',
                                      height: 6.70 * SizeConfig.textMultiplier,
                                      width: 12.70 * SizeConfig.imageSizeMultiplier,),
                                    Image.asset('images/emofour.png',
                                      height: 6.70 * SizeConfig.textMultiplier,
                                      width: 12.70 * SizeConfig.imageSizeMultiplier,),
                                  ],
                                ),
                                //-----------------Reason for user Experience-------------------
                                FlatButton(
                                    onPressed: (){},
                                    child: kWhyExp),
                                Column(
                                  children: <Widget>[
                                    //----------------------About Player Details----------------
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Padding(
                                            padding: const EdgeInsets.only(left: 15.0),
                                            child: _titleContainer('PLAYER - ')),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 40.0),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: <Widget>[
                                              Wrap(
                                                spacing: 20.0,
                                                runSpacing: 20.0,
                                                children: <Widget>[
                                                  FilterChipWidget(chipName: 'Lacked Skills'),
                                                  FilterChipWidget(chipName: 'Late'),
                                                ],
                                              ),
                                              Wrap(
                                                spacing: 20.0,
                                                runSpacing: 20.0,
                                                children: <Widget>[
                                                  FilterChipWidget(chipName: 'Abusive'),
                                                  FilterChipWidget(chipName: 'Unfair'),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    //-------------------------About App------------------------
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Padding(
                                            padding: const EdgeInsets.only(left: 15.0),
                                            child: _titleContainer('APP - ')),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 40.0),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: <Widget>[
                                              Wrap(
                                                spacing: 20.0,
                                                runSpacing: 20.0,
                                                children: <Widget>[
                                                  FilterChipWidget(chipName: 'Insufficient Filters'),
                                                  FilterChipWidget(chipName: 'Difficult to use'),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 6.70 * SizeConfig.textMultiplier,
                                ),
                                //----------------------More About User Experience--------------
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    FlatButton(
                                      onPressed: (){},
                                        child: kTell),
                                    Padding(
                                        padding: EdgeInsets.all(12.0),
                                        child: kTellSub),
                                     Padding(
                                       padding: EdgeInsets.symmetric(horizontal: 14.0),
                                       child: Container(
                                         constraints: BoxConstraints.tightForFinite(),
                                         color: const Color(0XFF0F33B8),
                                         height: 0.35 * SizeConfig.textMultiplier,
                                         width: 100 * SizeConfig.imageSizeMultiplier,),
                                     ),
                                  ],
                                ),
                                SizedBox(
                                  height: 6.70 * SizeConfig.textMultiplier,
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

Widget _titleContainer(String myTitle){
  return Text(
    myTitle,
    style: TextStyle(
        color: Colors.grey,
        fontWeight: FontWeight.w300,
        fontSize: 3 * SizeConfig.textMultiplier,
    ),
  );
}

class FilterChipWidget extends StatefulWidget {
  final String chipName;

  FilterChipWidget ({Key key, this.chipName}) : super(key: key);

  @override
  _FilterChipWidgetState createState() => _FilterChipWidgetState();
}

class _FilterChipWidgetState extends State<FilterChipWidget> {
  var _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return FilterChip(
      elevation: 5.0,
      label: Text(widget.chipName),
      labelStyle: TextStyle(
          color: Colors.black,
          fontSize: 2.5 * SizeConfig.textMultiplier,
          fontWeight: FontWeight.w400
      ),
      selected: _isSelected,
      backgroundColor: Colors.white,
      onSelected: (isSelected){
        setState(() {
          _isSelected = isSelected;
        });
      },
      selectedColor: Colors.white,
    );
  }
}