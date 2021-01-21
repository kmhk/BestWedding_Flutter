
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wedding_app/resources/values/AppColors.dart';
import 'package:wedding_app/services/SDP.dart';
import 'package:wedding_app/services/helper_service.dart';

class GetStartedPage extends StatefulWidget{
  @override
  _GetStartedPage createState() => new _GetStartedPage();
}

class _GetStartedPage extends State<GetStartedPage>{
  var checkedValue = false;
  var checkedValue2 = false;
  @override
  Widget build(BuildContext context) {
    SDP.init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/introimage2.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: new Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 5,
                    child: Container(
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
                  ),
                  Expanded(
                    flex: 5,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(0, SDP.sdpPercentHeightScreen(0.03), SDP.sdpPercentWidthScreen(0.04), 0),
                      alignment: Alignment.topRight,
                      child: GestureDetector(
                        onTap: () => {
                          HelpersService.push(context, '/login')
                        },
                        child: Text("Login",style: TextStyle(fontSize: SDP.sdp(12)),),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.fromLTRB(SDP.sdpPercentWidthScreen(0.04), SDP.sdpPercentHeightScreen(0.05), SDP.sdpPercentWidthScreen(0.04), 0),
                alignment: Alignment.topLeft,
                child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text("Get Started",style: TextStyle(fontSize: SDP.sdp(20))),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: SDP.sdpPercentHeightScreen(0.02)),
                      alignment: Alignment.topLeft,
                      child: Text("Let’s get started by setting up your account details here.",style: TextStyle(fontSize: SDP.sdp(12),color: Colors.black45)),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: SDP.sdpPercentWidthScreen(0.02)) ,
                      height: SDP.sdp(35),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Name',
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: SDP.sdpPercentWidthScreen(0.015)) ,
                      height: SDP.sdp(35),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Email Address',
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: SDP.sdpPercentWidthScreen(0.015)) ,
                      height: SDP.sdp(35),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Date of Birth',
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: SDP.sdpPercentWidthScreen(0.015)) ,
                      height: SDP.sdp(35),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Create Password',
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: SDP.sdpPercentWidthScreen(0.015)) ,
                      height: SDP.sdp(35),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Confirm Password',
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(top: SDP.sdpPercentWidthScreen(0.03)) ,
                      child: Text("Setup account using google or facebook",style: TextStyle(decoration: TextDecoration.underline),),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: SDP.sdpPercentWidthScreen(0.03)) ,
                      height: 30,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Checkbox(
                              value: checkedValue,
                              onChanged:(value){
                                setState(() {
                                  checkedValue = value;
                                });
                              },
                            ),
                          ),
                          Expanded(
                            flex: 9,
                            child: Text("test Text"),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 30,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Checkbox(
                              value: checkedValue2,
                              onChanged:(value){
                                setState(() {
                                  checkedValue2 = value;
                                });
                              },
                            ),
                          ),
                          Expanded(
                            flex: 9,
                            child: Text("test Text"),
                          )
                        ],
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.fromLTRB(SDP.sdpPercentWidthScreen(0.15), SDP.sdpPercentHeightScreen(0.03), SDP.sdpPercentWidthScreen(0.15), 0),
                      child: ButtonTheme(
                        minWidth: SDP.sdp(180),
                        height: SDP.sdp(35),
                        child: RaisedButton(
                          onPressed: () {
                            //HelpersService.push(context, '/getStartedIntro');
                          },
                          child: Text('SET UP ACCOUNT', style: TextStyle(fontSize: SDP.sdp(12))),
                          color: Colors.transparent,
                          textColor: Colors.black38,
                          shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(SDP.sdp(20)),side: BorderSide(color: Colors.black38)),
                          elevation: 0,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, SDP.sdpPercentHeightScreen(0.03), 0, 0),
                      alignment: Alignment.topLeft,
                      child: Text("Once you’ve logged go to your profile settings to add more details to your profile"),
                    )
                  ],
                ),
              )
            ],
          )
      ),
    );

  }
}