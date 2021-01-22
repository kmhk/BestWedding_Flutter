
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wedding_app/resources/values/AppColors.dart';
import 'package:wedding_app/services/RateApp.dart';
import 'package:wedding_app/services/SDP.dart';
import 'package:wedding_app/services/HelpersService.dart';
import 'package:sizer/sizer.dart';

class LoginPage extends StatefulWidget{

  @override
  _LoginPage createState() => new _LoginPage();
}

class _LoginPage extends State<LoginPage>{
  

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
                      padding: EdgeInsets.fromLTRB(4.0.w, 3.0.h, 0, 0),
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
                      padding: EdgeInsets.fromLTRB(0, 3.0.h, 4.0.w, 0),
                      alignment: Alignment.topRight,
                      child: GestureDetector(
                        onTap: () => {
                          HelpersService.push(context, "/getStarted")
                        },
                        child: Text("SIGN UP",style: TextStyle(fontSize: 12.0.sp),),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.fromLTRB(4.0.w, 6.0.h, 4.0.w, 0),
                alignment: Alignment.topLeft,
                child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text("Login",style: TextStyle(fontSize: 20.0.sp)),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 7.0.h) ,
                      height: 7.0.h,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Email Address',
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 1.5.h) ,
                      height: 7.0.h,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 3.0.h) ,
                      height: 7.0.h,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 5,
                            child: Container(
                              padding: EdgeInsets.only(left: 0,right: 2.0.w),
                              child: ButtonTheme(
                                height: 7.0.h,
                                child: RaisedButton(
                                  onPressed: () {
                                   // HelpersService.push(context, '/getStartedIntro');
                                  },
                                  child: Text('Login', style: TextStyle(fontSize: 12.0.sp)),
                                  color: Colors.black12,
                                  textColor: Colors.black38,
                                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0.sp)),
                                  elevation: 0,
                                ),
                              )
                            )
                          ),
                          Expanded(
                              flex: 5,
                              child: Container(
                                  padding: EdgeInsets.only(left: 2.0.w),
                                  child: ButtonTheme(
                                    height: 7.0.h,
                                    child: RaisedButton(
                                      onPressed: () {
                                        //HelpersService.push(context, '/getStartedIntro');
                                      },
                                      child: Text('Forgot Password', style: TextStyle(fontSize: 12.0.sp)),
                                      color: Colors.transparent,
                                      textColor: Colors.black38,
                                      shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(5.0.sp),side: BorderSide(color: Colors.black38)),
                                      elevation: 0,
                                    ),
                                  )
                              ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 2.5.h),
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                        onTap: () => {
                            RateApp.showRateApp(context)
                        },
                        child: Text("Rate the app",style: TextStyle(decoration: TextDecoration.underline,color: AppColors.ORANGE),),
                      )
                    )
                  ],
                ),
              ),
              Expanded(child: Container(
                margin: EdgeInsets.only(bottom: 2.5.h ),
                width: 100.0.w,
                padding: EdgeInsets.only(left: 4.0.w,right: 4.0.w),
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: 1.5.h) ,
                        child: ButtonTheme(
                          height: 8.0.h,
                          minWidth: 100.0.w,
                          child: RaisedButton(
                            onPressed: () {
                              //HelpersService.push(context, '/getStartedIntro');
                            },
                            child: Text('Log in With Facebook', style: TextStyle(fontSize:12.0.sp)),
                            color: Colors.transparent,
                            textColor: Colors.black38,
                            shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(5.0.sp),side: BorderSide(color: Colors.black38)),
                            elevation: 0,
                          ),
                        ),
                      ),
                      ButtonTheme(
                        height: 8.0.h,
                        minWidth: 100.0.w,
                        child: RaisedButton(
                          onPressed: () {
                            //HelpersService.push(context, '/getStartedIntro');
                          },
                          child: Text('Log in With Google', style: TextStyle(fontSize: 12.0.sp)),
                          color: Colors.transparent,
                          textColor: Colors.black38,
                          shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(5.0.sp),side: BorderSide(color: Colors.black38)),
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

  
}