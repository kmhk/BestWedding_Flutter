
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BorderTextField extends StatelessWidget{
  var hint;
  BorderTextField({this.hint});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.0.w),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26)
      ),
      height: 5.5.h,
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: hint,
        ),
      ),
    );
  }

}