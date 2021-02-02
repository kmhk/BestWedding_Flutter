
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wedding_app/resources/values/AppColors.dart';
import 'package:wedding_app/services/SDP.dart';
import 'package:wedding_app/services/HelpersService.dart';
import 'package:sizer/sizer.dart';
import 'package:wedding_app/widgets/MainTopBar.dart';

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
              MainTopBar(showRigthOptions: false),
              Center(
                child: new Container(
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.fromLTRB(0, 6.0.h, 0, 0),
                    child: CircleAvatar(
                      radius: 9.0.h,
                      backgroundImage: AssetImage("assets/app_logo.png"),
                    )
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(18.0.w, 5.0.h, 18.0.w, 0),
                child: Text("Choose from one of the following",style: TextStyle(fontSize: 13.0.sp,color: AppColors.PRIMARY_COLOR),textAlign: TextAlign.center,),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(8.0.w, 5.0.h, 8.0.w, 0),

                child: ButtonTheme(
                  minWidth: 70.0.w,
                  height: 8.5.h,
                  child: RaisedButton(
                    onPressed: () {
                      HelpersService.push(context, '/getStarted');
                    },
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(1.0.w, 0, 0, 0),
                        child: Text("I'm getting married!", style: TextStyle(fontSize: 14.0.sp)),

                      ),
                    ),
                    color: AppColors.PRIMARY_COLOR,
                    textColor: Colors.white,
                    elevation: 0,
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(3.0.sp),side: BorderSide(color: AppColors.PRIMARY_COLOR)),
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.fromLTRB(8.0.w, 5.0.h, 8.0.w, 0),
                child: ButtonTheme(
                  minWidth: 70.0.w,
                  height: 8.5.h,
                  child: RaisedButton(
                    onPressed: () {
                      HelpersService.push(context, '/getStarted');
                    },
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                          padding: EdgeInsets.fromLTRB(1.0.w, 0, 0, 0),
                        child: Text("I'm supplier!", style: TextStyle(fontSize: 14.0.sp),textAlign: TextAlign.center,),
                      ),
                    ),

                    color: Colors.white,
                    textColor: AppColors.PRIMARY_COLOR,
                    elevation: 0,
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(3.0.sp),side: BorderSide(color: AppColors.PRIMARY_COLOR)),
                  ),
                ),
              ),
            ],
          )
      ),
    );

  }
}

