
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wedding_app/resources/values/AppColors.dart';
import 'package:wedding_app/services/SDP.dart';
import 'package:wedding_app/services/HelpersService.dart';

class GetStartedIntropage extends StatefulWidget{
  @override
  _GetStartedIntropage createState() => new _GetStartedIntropage();
}

class _GetStartedIntropage extends State<GetStartedIntropage>{
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
              Container(
                  padding: EdgeInsets.fromLTRB(SDP.sdpPercentWidthScreen(0.04), SDP.sdpPercentHeightScreen(0.03), 0, 0),
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                    onTap: () => {
                      HelpersService.backTo(context, '/intro2')
                    },
                    child: CircleAvatar(
                      radius: SDP.sdp(10),
                      backgroundImage: AssetImage("assets/world_icon.png"),
                    ),
                  ),
              ),
              Center(
                child: new Container(
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.fromLTRB(0, SDP.sdpPercentHeightScreen(0.06), 0, 0),
                    child: CircleAvatar(
                      radius: SDP.sdp(50),
                      backgroundImage: AssetImage("assets/app_logo.png"),
                    )
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(SDP.sdpPercentWidthScreen(0.15), SDP.sdpPercentHeightScreen(0.05), SDP.sdpPercentWidthScreen(0.15), 0),
                child: Text("Choose from one of the following",style: TextStyle(fontSize: SDP.sdp(13)),textAlign: TextAlign.center,),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, SDP.sdpPercentHeightScreen(0.05), 0, 0),
                child: ButtonTheme(
                  minWidth: SDP.sdpPercentWidthScreen(1),
                  height: SDP.sdp(75),
                  child: RaisedButton(
                    onPressed: () {
                      HelpersService.push(context, '/getStarted');
                    },
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(SDP.sdpPercentWidthScreen(0.01), 0, 0, 0),
                        child: Text("I'm getting married!", style: TextStyle(fontSize: SDP.sdp(12))),
                      ),
                    ),
                    color: AppColors.PRIMARY_COLOR,
                    textColor: Colors.black38,
                    elevation: 0,
                  ),
                ),
              ),

              Container(

                child: ButtonTheme(
                  minWidth: SDP.sdpPercentWidthScreen(1),
                  height: SDP.sdp(75),
                  child: RaisedButton(
                    onPressed: () {
                      HelpersService.push(context, '/getStarted');
                    },
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          padding: EdgeInsets.fromLTRB(SDP.sdpPercentWidthScreen(0.01), 0, 0, 0),
                        child: Text("I'm supplier!", style: TextStyle(fontSize: SDP.sdp(12)),textAlign: TextAlign.left,),
                      ),
                    ),

                    color: AppColors.LIGTH_ORANGE,
                    textColor: Colors.black38,
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

