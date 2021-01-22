
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:wedding_app/services/HelpersService.dart';

class MainTopBar extends StatelessWidget{

  bool showLoginOption;
  bool showRigthOptions;

  MainTopBar({@required this.showRigthOptions,this.showLoginOption});

  @override
  Widget build(BuildContext context) {
    return Row(
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
                radius: 1.8.h,
                backgroundImage: AssetImage("assets/world_icon.png"),
              ),
            ),
          ),
        ),
        if(showRigthOptions) Expanded(
          flex: 5,
          child: Container(
            padding: EdgeInsets.fromLTRB(0, 3.0.h, 4.0.w, 0),
            alignment: Alignment.topRight,
            child: GestureDetector(
              onTap: () => {
                if(showLoginOption){
                  HelpersService.push(context, '/login')
                }else{
                  HelpersService.push(context, "/getStarted")
                }
              },
              child: Text(showLoginOption? "Login" : "Sign Up",style: TextStyle(fontSize: 12.0.sp),),
            ),
          ),
        ),
      ],
    );
  }

}