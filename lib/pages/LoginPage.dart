
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rate_my_app/rate_my_app.dart';
import 'package:wedding_app/resources/values/AppColors.dart';
import 'package:wedding_app/services/SDP.dart';
import 'package:wedding_app/services/helper_service.dart';

class LoginPage extends StatefulWidget{

  @override
  _LoginPage createState() => new _LoginPage();
}

class _LoginPage extends State<LoginPage>{
  RateMyApp rateMyApp = RateMyApp(
    preferencesPrefix: 'Enjoying The Best Wedding App?',
    minDays: 0, // Show rate popup on first day of install.
    minLaunches: 5,
    appStoreIdentifier: "1491556149",
    googlePlayIdentifier: "com.weddingApp.app",// Show rate popup after 5 launches of app after minDays is passed.
  );

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
                          HelpersService.push(context, "/getStarted")
                        },
                        child: Text("SIGN UP",style: TextStyle(fontSize: SDP.sdp(12)),),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.fromLTRB(SDP.sdpPercentWidthScreen(0.04), SDP.sdpPercentHeightScreen(0.06), SDP.sdpPercentWidthScreen(0.04), 0),
                alignment: Alignment.topLeft,
                child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text("Login",style: TextStyle(fontSize: SDP.sdp(20))),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: SDP.sdpPercentWidthScreen(0.07)) ,
                      height: SDP.sdp(35),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Email Address',
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: SDP.sdpPercentWidthScreen(0.02)) ,
                      height: SDP.sdp(35),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: SDP.sdpPercentWidthScreen(0.03)) ,
                      height: SDP.sdp(35),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 5,
                            child: Container(
                              padding: EdgeInsets.only(left: 0,right: SDP.sdp(5)),
                              child: ButtonTheme(
                                height: SDP.sdp(35),
                                child: RaisedButton(
                                  onPressed: () {
                                    HelpersService.push(context, '/getStartedIntro');
                                  },
                                  child: Text('Login', style: TextStyle(fontSize: SDP.sdp(12))),
                                  color: Colors.black12,
                                  textColor: Colors.black38,
                                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(SDP.sdp(20))),
                                  elevation: 0,
                                ),
                              )
                            )
                          ),
                          Expanded(
                              flex: 5,
                              child: Container(
                                  padding: EdgeInsets.only(left: SDP.sdp(5)),
                                  child: ButtonTheme(
                                    height: SDP.sdp(35),
                                    child: RaisedButton(
                                      onPressed: () {
                                        HelpersService.push(context, '/getStartedIntro');
                                      },
                                      child: Text('Forgot Password', style: TextStyle(fontSize: SDP.sdp(12))),
                                      color: Colors.transparent,
                                      textColor: Colors.black38,
                                      shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(SDP.sdp(5)),side: BorderSide(color: Colors.black38)),
                                      elevation: 0,
                                    ),
                                  )
                              ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: SDP.sdpPercentHeightScreen(0.015)),
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                        onTap: () => {
                            _showRateApp(context)
                        },
                        child: Text("Rate the app",style: TextStyle(decoration: TextDecoration.underline,color: AppColors.ORANGE),),
                      )
                    )
                  ],
                ),
              ),
              Expanded(child: Container(
                margin: EdgeInsets.only(bottom: SDP.sdp(25) ),
                width: SDP.sdpPercentHeightScreen(1),
                padding: EdgeInsets.only(left: SDP.sdpPercentWidthScreen(0.04),right: SDP.sdpPercentWidthScreen(0.04)),
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: SDP.sdpPercentWidthScreen(0.03)) ,
                        child: ButtonTheme(
                          height: SDP.sdp(45),
                          minWidth: SDP.sdpPercentWidthScreen(1),
                          child: RaisedButton(
                            onPressed: () {
                              //HelpersService.push(context, '/getStartedIntro');
                            },
                            child: Text('Log in With Facebook', style: TextStyle(fontSize: SDP.sdp(12))),
                            color: Colors.transparent,
                            textColor: Colors.black38,
                            shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(SDP.sdp(5)),side: BorderSide(color: Colors.black38)),
                            elevation: 0,
                          ),
                        ),
                      ),
                      ButtonTheme(
                        height: SDP.sdp(45),
                        minWidth: SDP.sdpPercentWidthScreen(1),
                        child: RaisedButton(
                          onPressed: () {
                            //HelpersService.push(context, '/getStartedIntro');
                          },
                          child: Text('Log in With Google', style: TextStyle(fontSize: SDP.sdp(12))),
                          color: Colors.transparent,
                          textColor: Colors.black38,
                          shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(SDP.sdp(5)),side: BorderSide(color: Colors.black38)),
                          elevation: 0,
                        ),
                      ),
                    ],
                  )
                ),
              ),
              ),
            ],
          )
      ),
    );

  }

  _showRateApp(BuildContext context){
    rateMyApp.showStarRateDialog(
      context,
      title: 'Enjoying The Best Wedding App?', // The dialog title.
      message: 'Tap a star to rate it on the App Store', // The dialog message.
      // contentBuilder: (context, defaultContent) => content, // This one allows you to change the default dialog content.
      actionsBuilder: (context, stars) { // Triggered when the user updates the star rating.
        return [ // Return a list of actions (that will be shown at the bottom of the dialog).
          FlatButton(
            child: Text('OK'),
            onPressed: () async {
              print('Thanks for the ' + (stars == null ? '0' : stars.round().toString()) + ' star(s) !');
              // You can handle the result as you want (for instance if the user puts 1 star then open your contact page, if he puts more then open the store page, etc...).
              // This allows to mimic the behavior of the default "Rate" button. See "Advanced > Broadcasting events" for more information :
              Navigator.pop<RateMyAppDialogButton>(context, RateMyAppDialogButton.rate);
              rateMyApp.launchStore();
              await rateMyApp.callEvent(RateMyAppEventType.rateButtonPressed);
            },
          ),
        ];
      },
      ignoreNativeDialog: Platform.isAndroid, // Set to false if you want to show the Apple's native app rating dialog on iOS or Google's native app rating dialog (depends on the current Platform).
      dialogStyle: DialogStyle( // Custom dialog styles.
        titleAlign: TextAlign.center,
        messageAlign: TextAlign.center,
        messagePadding: EdgeInsets.only(bottom: 20),
      ),
      starRatingOptions: StarRatingOptions(), // Custom star bar rating options.
      onDismissed: () => rateMyApp.callEvent(RateMyAppEventType.laterButtonPressed), // Called when the user dismissed the dialog (either by taping outside or by pressing the "back" button).
    );

  }
}