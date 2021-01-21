
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wedding_app/resources/values/AppColors.dart';
import 'package:wedding_app/services/SDP.dart';
import 'package:wedding_app/services/helper_service.dart';

class IntroPage extends StatefulWidget{
  @override
  _IntroPageState createState() => new _IntroPageState();

}

class _IntroPageState extends State<IntroPage>{



  @override
  Widget build(BuildContext context) {
      SDP.init(context);
      return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/introimage.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: new Container(
            padding: EdgeInsets.fromLTRB(0, 0 , 0, SDP.sdp(25)),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ButtonTheme(
                minWidth: SDP.sdp(120),
                height: SDP.sdp(30),
                child: RaisedButton(
                  onPressed: () {
                    HelpersService.push(context, '/intro2');
                  },
                  child: Text('Skip', style: TextStyle(fontSize: SDP.sdp(18))),
                  color: AppColors.PRIMARY_COLOR,
                  textColor: Colors.black38,
                  elevation: 5,
                ),
              ),
            ),
          ),
        ),
      );
  }
}