
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wedding_app/widgets/BorderTextField.dart';
import 'package:wedding_app/widgets/CustomDropDown.dart';
import 'package:wedding_app/widgets/MainTopBar.dart';
import 'package:sizer/sizer.dart';

class GetStartedStepsPage extends StatefulWidget{

  @override
  _GetStartedStepsPage createState() => _GetStartedStepsPage();

}

class _GetStartedStepsPage extends State<GetStartedStepsPage>{
  var dropdownValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        child: new Column(
         children: <Widget>[
           MainTopBar(showRigthOptions: true,showLoginOption: true,),
           Container(
             margin: EdgeInsets.only(left: 7.0.w,right: 7.0.w,top: 5.0.h),
             child: Column(
               children: <Widget>[
                 Container(
                   alignment: Alignment.topLeft,
                   child: Text("Step 1 of 3",style: TextStyle(fontSize: 16.0.sp,color: Colors.black),),
                 ),
                 SizedBox(height: 3.5.h,),
                 Container(
                   alignment: Alignment.topLeft,
                   child: Text("Who are you?",style: TextStyle(fontSize: 14.0.sp,color: Colors.black54),),
                 ),
                 SizedBox(height: 3.5.h,),
                 CustomDropDrown(list: ["Bride","Groom","Other"], defaultValue: "Your role is?"),
                 SizedBox(height: 3.5.h,),
                 Container(
                   alignment: Alignment.topLeft,
                   child: Text("Introduce your other half",style: TextStyle(fontSize: 14.0.sp,color: Colors.black54),)),
                 SizedBox(height: 3.5.h,),
                 BorderTextField(hint: "Their name is?"),
                 SizedBox(height: 1.5.h,),
                 CustomDropDrown(list: ["Bride","Groom","Other"], defaultValue: "Their role is?"),
                 SizedBox(height: 12.5.h,),
                 ButtonTheme(
                   height: 6.0.h,
                   minWidth: 100.0.w,
                   child: RaisedButton(
                     onPressed: () {
                       // HelpersService.push(context, '/getStartedIntro');
                     },
                     child: Text('NEXT', style: TextStyle(fontSize: 12.0.sp)),
                     color: Colors.black12,
                     textColor: Colors.black38,
                     shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(18.0.sp)),
                     elevation: 0,
                   ),
                 )

               ],
             ),
           ),
         ],

        ),
      ),
    );
  }

}