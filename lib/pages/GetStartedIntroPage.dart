
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wedding_app/resources/values/AppColors.dart';
import 'package:wedding_app/services/SDP.dart';
import 'package:wedding_app/services/HelpersService.dart';
import 'package:sizer/sizer.dart';

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
                  padding: EdgeInsets.fromLTRB(4.0.w, 3.0.h, 0, 0),
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                    onTap: () => {
                      HelpersService.backTo(context, '/intro2')
                    },
                    child: CircleAvatar(
                      radius: 1.8.h,
                      backgroundImage: AssetImage("assets/world_icon.png"),
                    ),
                  ),
              ),
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
                child: Text("Choose from one of the following",style: TextStyle(fontSize: 13.0.sp),textAlign: TextAlign.center,),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 5.0.h, 0, 0),
                child: ButtonTheme(
                  minWidth: SDP.sdpPercentWidthScreen(1),
                  height: 15.0.h,
                  child: RaisedButton(
                    onPressed: () {
                      HelpersService.push(context, '/getStarted');
                    },
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(1.0.w, 0, 0, 0),
                        child: Text("I'm getting married!", style: TextStyle(fontSize: 12.0.sp)),
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
                  height: 15.0.h,
                  child: RaisedButton(
                    onPressed: () {
                      HelpersService.push(context, '/getStarted');
                    },
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          padding: EdgeInsets.fromLTRB(1.0.w, 0, 0, 0),
                        child: Text("I'm supplier!", style: TextStyle(fontSize: 12.0.sp),textAlign: TextAlign.left,),
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

