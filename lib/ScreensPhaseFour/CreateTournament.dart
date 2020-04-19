import 'package:flutter/material.dart';
import 'package:game_app/Constants/size_config.dart';

class CreateTournament extends StatefulWidget {
static const String id = 'CreateTournament';
  @override
  _CreateTournamentState createState() => _CreateTournamentState();
}

class _CreateTournamentState extends State<CreateTournament> {

  int SelectRadioButton;

  @override
  void initState(){
    super.initState();
    SelectRadioButton = 0;
  }

  setSelectedRadioButton(int val){
    setState(() {
      SelectRadioButton = val;
    });
  }

  static final kCreateTournamentUpperCase = Text("CREATE TOURNAMENT",
    style: TextStyle(
      color: Colors.white,
      fontSize: 3 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w500,
    ),
  );

  static final kCreateTournament = Text('Create Tournament',
    style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w600,
      fontSize: 3.5 * SizeConfig.textMultiplier,
    ),);

  static final kNumberOfPlayer = Text('NO. OF PLAYERS',
  style: TextStyle(
  fontSize: 2.60 * SizeConfig.textMultiplier,
  color: Colors.grey,
  fontWeight: FontWeight.w600
  ),);

  static final kRegFees = Text('REGISTRATION FEES',
  style: TextStyle(
  fontSize: 2.60 * SizeConfig.textMultiplier,
  color: Colors.grey,
  fontWeight: FontWeight.w600
  ),);

  static final k0 = Text('Rs 0',
    style: TextStyle(
        fontSize: 2.60 * SizeConfig.textMultiplier,
        color: Colors.black,
        fontWeight: FontWeight.w600
    ),);

  static final kTotalRegFees = Text('TOTAL REGISTRATION FEE',
    style: TextStyle(
        fontSize: 2.60 * SizeConfig.textMultiplier,
        color: Colors.black,
        fontWeight: FontWeight.w600
    ),);

  static final kPayVia = Text('Pay Via',
    style: TextStyle(
        fontSize: 2.60 * SizeConfig.textMultiplier,
        color: Colors.black,
        fontWeight: FontWeight.w600
    ),);

  static final kPaymentVia =Text('PAYMENT VIA',
  style: TextStyle(
  fontSize: 2.60 * SizeConfig.textMultiplier,
  color: Colors.grey,
  fontWeight: FontWeight.w600
  ),);

  static final kHost = Text('HOST: Remaining Amount',
    style: TextStyle(
        fontSize: 2.20 * SizeConfig.textMultiplier,
        color: Colors.black,
        fontWeight: FontWeight.w600
    ),);

  static final kCompany = Text('COMPANY: 15% of Total Fee Collected',
    style: TextStyle(
        fontSize: 2.20 * SizeConfig.textMultiplier,
        color: Colors.black,
        fontWeight: FontWeight.w600
    ),);

  static final kOtherFinancials = Text('OTHER FINANCIALS',
    style: TextStyle(
        fontSize: 2.60 * SizeConfig.textMultiplier,
        color: Colors.grey,
        fontWeight: FontWeight.w600
    ),);

  static final kFirstPrize = Text('FIRST PRIZE',
      style: TextStyle(
          fontSize: 2.60 * SizeConfig.textMultiplier,
          color: Colors.grey,
          fontWeight: FontWeight.w600
      ),);

  static final kSecondPrize = Text('SECOND PRIZE',
    style: TextStyle(
        fontSize: 2.60 * SizeConfig.textMultiplier,
        color: Colors.grey,
        fontWeight: FontWeight.w600
    ),);

  static final kPrizingModel = Text('PRIZING MODEL',
    style: TextStyle(
        fontSize: 2.60 * SizeConfig.textMultiplier,
        color: Colors.grey,
        fontWeight: FontWeight.w600
    ),);

  static final kWinner = Text('WINNER: 40% of Total Fee Collected',
    style: TextStyle(
        fontSize: 2.60 * SizeConfig.textMultiplier,
        color: Colors.black,
        fontWeight: FontWeight.w600
    ),);

  static final kRunnerUp = Text('RUNNER UP: 20% of Total Fee Collected',
    style: TextStyle(
        fontSize: 2.60 * SizeConfig.textMultiplier,
        color: Colors.black,
        fontWeight: FontWeight.w700
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
                          backgroundColor: const Color(0XFF0F33B8),
                          title: kCreateTournament,
                        ),
                        body: ListView(
                          children: ListTile.divideTiles(
                            context: context,
                            tiles: [
                              Column(
                                children: <Widget>[
                                  //List of Information that needs to be provided
                                  ListTile(
                                      title: TextFormField(
                                        decoration: InputDecoration(
                                          hintText: 'SQUASH',
                                          labelText: 'Match Type',
                                          labelStyle: TextStyle(
                                            fontFamily: "WorkSansSemiBold",
                                            fontSize: 3 * SizeConfig.textMultiplier,
                                            color: Colors.black,),
                                        ),
                                        keyboardType: TextInputType.text,
                                      ),
                                    ),
                                  ListTile(
                                      title: TextFormField(
                                        decoration: InputDecoration(
                                          hintText: 'Tournament Name',
                                          labelText: 'Tournament Name',
                                          labelStyle: TextStyle(
                                            fontFamily: "WorkSansSemiBold",
                                            fontSize: 3 * SizeConfig.textMultiplier,
                                            color: Colors.black,),
                                        ),
                                        keyboardType: TextInputType.text,
                                      ),
                                    ),
                                  ListTile(
                                      title: TextFormField(
                                        decoration: InputDecoration(
                                          hintText: 'Select tournament Location',
                                          labelText: 'Location',
                                          labelStyle: TextStyle(
                                            fontFamily: "WorkSansSemiBold",
                                            fontSize: 3 * SizeConfig.textMultiplier,
                                            color: Colors.black,),
                                          suffixIcon: IconButton(
                                            icon: Icon(Icons.edit,
                                              color: Colors.black87,
                                            ),
                                            iconSize: 4 * SizeConfig.textMultiplier,
                                            onPressed: (){},),
                                        ),
                                        keyboardType: TextInputType.text,
                                      ),
                                    ),
                                  ListTile(
                                      title: TextFormField(
                                        decoration: InputDecoration(
                                          hintText: 'Choose tournament Date',
                                          labelText: 'Tournament Date',
                                          labelStyle: TextStyle(
                                            fontFamily: "WorkSansSemiBold",
                                            fontSize: 3 * SizeConfig.textMultiplier,
                                            color: Colors.black,),
                                          suffixIcon: IconButton(
                                            icon: Icon(Icons.date_range,
                                              color: Colors.black87,
                                            ),
                                            iconSize: 4 * SizeConfig.textMultiplier,
                                            onPressed: (){},),
                                        ),
                                        keyboardType: TextInputType.datetime,
                                      ),
                                    ),
                                  ListTile(
                                      title: TextFormField(
                                        decoration: InputDecoration(
                                          hintText: 'Choose tournament Time',
                                          labelText: 'Tournament Time',
                                          labelStyle: TextStyle(
                                            fontFamily: "WorkSansSemiBold",
                                            fontSize: 3 * SizeConfig.textMultiplier,
                                            color: Colors.black,),
                                          suffixIcon: IconButton(
                                            icon: Icon(Icons.access_time,
                                              color: Colors.black87,),
                                            iconSize: 4 * SizeConfig.textMultiplier,
                                            onPressed: (){},),
                                        ),
                                        keyboardType: TextInputType.datetime,
                                      ),
                                    ),
                                  SizedBox(
                                    height: 6 * SizeConfig.textMultiplier,
                                  ),
                                  Divider(
                                    color: Colors.grey,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: <Widget>[
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: FlatButton(
                                          onPressed: (){},
                                            child: kNumberOfPlayer),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 1 * SizeConfig.textMultiplier,
                                  ),
                                  Divider(
                                    color: Colors.grey,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      FlatButton(
                                          onPressed: (){},
                                          child: kRegFees),
                                      FlatButton(
                                        onPressed: (){},
                                        child: k0,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 4 * SizeConfig.textMultiplier),
                                        child: Container(
                                          color: const Color(0XFF0F33B8),
                                          width: 99.46 * SizeConfig.imageSizeMultiplier,
                                          height: 0.35 * SizeConfig.textMultiplier,),
                                      ),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          kTotalRegFees,
                                          FlatButton(
                                            onPressed: (){},
                                            child: k0,
                                          ),
                                        ],
                                      ),

                                    ],
                                  ),
                                  SizedBox(
                                    height: 1 * SizeConfig.textMultiplier,
                                  ),
                                  Divider(
                                    color: Colors.grey,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      FlatButton(
                                         onPressed: (){},
                                        child: kPrizingModel,
                                      ),
                                      //-------------------------First Prize--------------------------
                                      FlatButton(
                                        onPressed: (){},
                                        child: kFirstPrize,
                                      ),
                                      FlatButton(
                                        onPressed: (){},
                                          child: k0),
                                      Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 4 * SizeConfig.textMultiplier),
                                        child: Container(
                                          color: Colors.amber[500],
                                          width: 99.46 * SizeConfig.imageSizeMultiplier,
                                          height: 0.35 * SizeConfig.textMultiplier,),
                                      ),
                                      FlatButton(
                                        onPressed: (){},
                                        child: kWinner,
                                      ),
                                      //-------------------------Second Prize-------------------------
                                      FlatButton(
                                        onPressed: (){},
                                        child: kSecondPrize,
                                      ),
                                      FlatButton(
                                        onPressed: (){},
                                        child: k0,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 4 * SizeConfig.textMultiplier),
                                        child: Container(
                                          color: Colors.grey[700],
                                          width: 99.46 * SizeConfig.imageSizeMultiplier,
                                          height: 0.35 * SizeConfig.textMultiplier,),
                                      ),
                                      FlatButton(
                                        onPressed: (){},
                                        child: kRunnerUp,
                                      ),
                                      //--------------------Other Financials--------------------------
                                      FlatButton(
                                        onPressed: (){},
                                        child: kOtherFinancials,
                                      ),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          FlatButton(
                                                      onPressed: (){},
                                                      child: kCompany),
                                          Expanded(
                                              child: Align(
                                                  alignment: Alignment.centerRight,
                                              child: FlatButton(
                                                  onPressed: (){},
                                                  child: k0))),
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          FlatButton(
                                                      onPressed: (){},
                                                      child: kHost),
                                          Expanded(
                                              child: Align(
                                                  alignment: Alignment.centerRight,
                                                  child: FlatButton(
                                                      onPressed: (){},
                                                      child: k0))),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 2 * SizeConfig.textMultiplier,
                                      ),
                                      FlatButton(
                                        onPressed: (){},
                                        child: kPaymentVia,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: <Widget>[
                                          ButtonBar(
                                            children: <Widget>[
                                              Radio(
                                                  value: 1,
                                                  groupValue: SelectRadioButton,
                                                  activeColor: const Color(0XFF0F33B8),
                                                  onChanged: (val){
                                                    print('Radio $val');
                                                    setSelectedRadioButton(val);
                                                  }),
                                            ],
                                          ),
                                          Padding(
                                              padding: EdgeInsets.all(6.0),
                                              child: kPayVia),
                                          Image.asset('images/paytm.png'),
                                        ],
                                      ),
                                      Divider(
                                        color: Colors.grey,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5 * SizeConfig.textMultiplier,
                                  ),
                                  Container(
                                    height: 8 * SizeConfig.textMultiplier,
                                    width: 70 * SizeConfig.imageSizeMultiplier,
                                    child: RaisedButton(
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                                        elevation: 10.0,
                                        color: const Color(0XFF0F33B8),
                                        onPressed: (){},
                                        child: kCreateTournamentUpperCase,
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
                    )
                );
              }
          );
        }
    );
  }
}

