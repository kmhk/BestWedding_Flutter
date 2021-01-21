
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wedding_app/resources/values/AppColors.dart';
import 'package:wedding_app/services/SDP.dart';
import 'package:wedding_app/services/helper_service.dart';

class Intro2Page extends StatefulWidget{
  @override
  _Intro2PageState createState() => new _Intro2PageState();

}

class _Intro2PageState extends State<Intro2Page>{

  var textIntro = "This is some introduction text to the app. You many not need it, but here if you need.";


  @override
  Widget build(BuildContext context) {
      SDP.init(context);
      return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/introimage2.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: new Column(
            children: <Widget>[
              Center(
                child: new Container(
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.fromLTRB(0, SDP.sdpPercentHeightScreen(0.12), 0, 0),
                  child: CircleAvatar(
                    radius: SDP.sdp(50),
                    backgroundImage: AssetImage("assets/app_logo.png"),
                  )
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(SDP.sdpPercentWidthScreen(0.15), SDP.sdpPercentHeightScreen(0.05), SDP.sdpPercentWidthScreen(0.15), 0),
                child: Text(textIntro,style: TextStyle(fontSize: SDP.sdp(13))),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(SDP.sdpPercentWidthScreen(0.15), SDP.sdpPercentHeightScreen(0.05), SDP.sdpPercentWidthScreen(0.15), 0),

                child: ButtonTheme(
                  minWidth: SDP.sdp(180),
                  height: SDP.sdp(35),
                  child: RaisedButton(
                    onPressed: () {
                      HelpersService.pushAndRemoveAll(context, '/intro2');
                    },
                    child: Text('Get Started', style: TextStyle(fontSize: SDP.sdp(12))),
                    color: Colors.transparent,
                    textColor: Colors.black38,
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(SDP.sdp(5)),side: BorderSide(color: Colors.black38)),
                    elevation: 0,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(SDP.sdpPercentWidthScreen(0.15), SDP.sdp(5), SDP.sdpPercentWidthScreen(0.15), 0),
                child: ButtonTheme(
                  minWidth: SDP.sdp(180),
                  height: SDP.sdp(35),
                  child: RaisedButton(
                    onPressed: () {
                      HelpersService.pushAndRemoveAll(context, '/intro2');
                    },
                    child: Text('Account sorted? - Login here', style: TextStyle(fontSize: SDP.sdp(12))),
                    color: AppColors.PRIMARY_COLOR,
                    textColor: Colors.black38,
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(SDP.sdp(5)),side: BorderSide(color: Colors.black38)),
                    elevation: 0,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.fromLTRB(SDP.sdpPercentWidthScreen(0.15), SDP.sdpPercentHeightScreen(0.12), SDP.sdpPercentWidthScreen(0.15), 0),
                child: ButtonTheme(
                  minWidth: SDP.sdp(180),
                  height: SDP.sdp(35),
                  child: RaisedButton(
                    onPressed: () {
                      HelpersService.pushAndRemoveAll(context, '/intro2');
                    },
                    child: Text('Account sorted? - Login Subscriber', style: TextStyle(fontSize: SDP.sdp(12)),textAlign: TextAlign.center,),
                    color: AppColors.PRIMARY_COLOR,
                    textColor: Colors.black38,
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(SDP.sdp(5)),side: BorderSide(color: Colors.black38)),
                    elevation: 0,
                  ),
                ),
              ),
            ],
          )
        ),
      );
  }
}