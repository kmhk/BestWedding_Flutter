
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wedding_app/resources/values/AppColors.dart';
import 'package:wedding_app/services/SDP.dart';
import 'package:wedding_app/services/HelpersService.dart';
import 'package:sizer/sizer.dart';

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
                  padding: EdgeInsets.fromLTRB(0, 12.0.h, 0, 0),
                  child: CircleAvatar(
                    radius: 9.0.h,
                    backgroundImage: AssetImage("assets/app_logo.png"),
                  )
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(15.0.w, 5.0.h, 15.0.w, 0),
                child: Text(textIntro,style: TextStyle(fontSize: 13.0.sp,color: AppColors.PRIMARY_COLOR)),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10.0.w, 5.0.h, 10.0.w, 0),

                child: ButtonTheme(
                  minWidth: 70.0.w,
                  height: 6.5.h,
                  child: RaisedButton(
                    onPressed: () {
                      HelpersService.push(context, '/getStartedIntro');
                    },
                    child: Text('Get Started', style: TextStyle(fontSize: 12.0.sp)),
                    color: Colors.transparent,
                    textColor: AppColors.PRIMARY_COLOR,
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(5.0.sp),side: BorderSide(color: AppColors.PRIMARY_COLOR)),
                    elevation: 0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10.0.w, 1.0.h, 10.0.w, 0),
                child: ButtonTheme(
                  minWidth: 70.0.w,
                  height: 6.5.h,
                  child: RaisedButton(
                    onPressed: () {
                      HelpersService.push(context, '/login');
                    },
                    child: Text('Account sorted? - Login here', style: TextStyle(fontSize: 12.0.sp)),
                    color: AppColors.PRIMARY_COLOR,
                    textColor: Colors.white,
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(5.0.sp),side: BorderSide(color: Colors.black38)),
                    elevation: 0,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.fromLTRB(15.0.w, 12.0.h, 15.0.w, 0),
                child: ButtonTheme(

                  height: 7.5.h,
                  child: RaisedButton(
                    onPressed: () {
                      HelpersService.push(context, '/login');
                    },
                    child: Text('Account sorted? - Login Subscriber', style: TextStyle(fontSize: 12.0.sp),textAlign: TextAlign.center,),
                    color: AppColors.PRIMARY_COLOR,
                    textColor: Colors.white,
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(5.0.sp),side: BorderSide(color: Colors.black38)),
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