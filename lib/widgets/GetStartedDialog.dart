

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class GetStartedDialog extends StatefulWidget{

  final Function(String route) onSelectOption;

  const GetStartedDialog({Key key,@required this.onSelectOption}) : super(key: key);

  @override
  _GetStartedDialog createState() => _GetStartedDialog();
}


class _GetStartedDialog extends State<GetStartedDialog>{





  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0.sp)),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  contentBox(context){
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left:7.0.w,top: 3.0.h, right: 7.0.w,bottom: 3.0.h),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                alignment: Alignment.topLeft,
                child: Text("Congratulations!",style: TextStyle(fontSize: 14.0.sp,color: Colors.black87),),
              ),
              SizedBox(height: 1.5.h,),
              Container(
                alignment: Alignment.topLeft,
                child: Text("You are curating the best day. Do you want to add more wedding details?"
                    " Don’t worry you can always update your profile later. ",
                  style: TextStyle(fontSize: 12.0.sp,color: Colors.black54)),
              ),
              SizedBox(height: 1.5.h,),
              Align(
                alignment: Alignment.bottomRight,
                child: ButtonTheme(
                minWidth: 100.0.w,
                height: 5.0.h,
                child: RaisedButton(
                  onPressed: () {
                    widget.onSelectOption("/getStartedSteps");
                  },
                  child: Text('Yes Please', style: TextStyle(fontSize:12.0.sp)),
                  color: Colors.transparent,
                  textColor: Colors.black38,
                  shape: new RoundedRectangleBorder(side: BorderSide(color: Colors.black38)),
                  elevation: 0,
                ),
              ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: ButtonTheme(
                  minWidth: 100.0.w,
                  height: 5.0.h,
                  child: RaisedButton(
                    onPressed: () {
                      widget.onSelectOption("/supplierCategories");
                    },
                    child: Text("I'll do it later", style: TextStyle(fontSize:12.0.sp)),
                    color: Colors.transparent,
                    textColor: Colors.black38,
                    shape: new RoundedRectangleBorder(side: BorderSide(color: Colors.black38)),
                    elevation: 0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

}