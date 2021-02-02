
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wedding_app/resources/values/AppColors.dart';
import 'package:wedding_app/services/SDP.dart';
import 'package:wedding_app/services/HelpersService.dart';
import 'package:sizer/sizer.dart';

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
            padding: EdgeInsets.fromLTRB(0, 0 , 0, 2.5.h),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ButtonTheme(
                minWidth: 40.0.w,
                height: 6.0.h,
                child: RaisedButton(
                  onPressed: () {
                    HelpersService.push(context, '/intro2');
                  },
                  child: Text('Skip', style: TextStyle(fontSize: 18.0.sp)),
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