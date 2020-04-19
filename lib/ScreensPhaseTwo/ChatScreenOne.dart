import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game_app/Constants/size_config.dart';

final ThemeData iOSTheme = ThemeData(
  primarySwatch: Colors.red,
  primaryColor: Colors.grey,
  primaryColorBrightness: Brightness.dark,
);

final ThemeData androidTheme = ThemeData(
  primarySwatch: Colors.red,
  primaryColor: Colors.grey,
);

const String defaultUserName = "John Doe";

class ChatScreenOne extends StatefulWidget {
  static const String id = 'ChatSceenOne';
  @override
  _ChatScreenOneState createState() => _ChatScreenOneState();
}

class _ChatScreenOneState extends State<ChatScreenOne> with TickerProviderStateMixin {

  final List<Msg> _message = <Msg>[];
  final TextEditingController _textController = TextEditingController();
  bool _isWriting = false;

  static final kChatCreateMatch = Text('CREATE MATCH',
  style: TextStyle(
  fontWeight: FontWeight.w600,
  fontSize: 2.5 * SizeConfig.textMultiplier,
  color: Colors.white
  ),);

  static final kChatVitul = Text('Vitul',
    style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 3.5 * SizeConfig.textMultiplier,
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
                      appBar: AppBar(
                        elevation: 0.00,
                        backgroundColor: const Color(0XFF0F33B8),
                        title: kChatVitul,
                        actions: <Widget>[
                          FlatButton(
                            onPressed: (){},
                              child: kChatCreateMatch),
                          IconButton(
                              icon: Icon(Icons.delete),
                              iconSize: 3.5 * SizeConfig.textMultiplier,
                              color: Colors.white,
                              onPressed: (){}),
                        ],
                        flexibleSpace: FlexibleSpaceBar(
                          centerTitle: true,
                        ),
                        bottom: PreferredSize(
                          preferredSize: Size.square(50.0),
                          child: TabBar(
                            tabs: [
                              Text('SINGLES', style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 2.0 * SizeConfig.textMultiplier,
                                  color: Colors.white
                              ),),
                              Text('DOUBLES', style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 2.0 * SizeConfig.textMultiplier,
                                  color: Colors.white
                              ),),
                              Text('TOURNAMENTS', style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 2.0 * SizeConfig.textMultiplier,
                                  color: Colors.white
                              ),),
                            ],
                          ),
                        ),
                      ),
                      body: Column(
                        children: <Widget>[
                          //-------------------------- Chat Board ------------------------
                          Flexible(
                            child: ListView.builder(
                              itemBuilder: (_, int index) => _message[index],
                              itemCount: _message.length,
                              reverse: true,
                              padding: EdgeInsets.all(6.0),),),
                          Divider(
                            height: 1.0,
                          ),
                          Container(
                            child: _buildComposer(),
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                );
              }
          );
        }
    );
  }
  Widget _buildComposer(){
    return IconTheme(
        data: IconThemeData(
            color: Colors.grey),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 9.0),
          child: Row(
            children: <Widget>[
              Flexible(
                  child: TextField(
                    controller: _textController,
                    onChanged: (String txt){
                      setState(() {
                        _isWriting = txt.length > 0;
                      });
                    },
                    onSubmitted: _submitMsg,
                    decoration: InputDecoration.collapsed(
                        hintText: 'Send a Message'),
                  ),),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 3.0),

                    child: CupertinoButton(
                      onPressed: (){},
                        child: IconButton(
                          icon: Icon(Icons.near_me,
                          size: 40.0,
                          color: const Color(0XFF0F33B8),),
                          onPressed: _isWriting ? () => _submitMsg(_textController.text)
                              : null,
                        ),
                    )
              ),
              ],
              ),
          ),
    );
}
void _submitMsg(String txt) {
    _textController.clear();
    setState(() {
      _isWriting = false;
    });
    Msg msg = Msg(
      txt: txt,
      animationController: AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 800),
      ),
    );
    setState(() {
      _message.insert(0, msg);
    });
    msg.animationController.forward();
}
@override
  void dispose(){
    for (Msg msg in _message){
      msg.animationController.dispose();
    }
    super.dispose();
}
}

class Msg extends StatelessWidget {
  Msg({this.txt, this.animationController});
  final String txt;
  final AnimationController animationController;
  @override
  Widget build(BuildContext context) {
    return SizeTransition(
        sizeFactor: CurvedAnimation(
            parent: animationController,
            curve: Curves.easeOut
        ),
      axisAlignment: 0.00,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 10.0),
              child: CircleAvatar(
                child: Text(defaultUserName[0]),
              ),
            ),
            Expanded(
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(defaultUserName, style: Theme.of(context).textTheme.subhead,),
                  Container(
                    margin:  EdgeInsets.only(top: 6.0),
                    child: Text(txt),
                  ),
                ],
            ),),
          ],
        ),
      ),
    );
  }
}
