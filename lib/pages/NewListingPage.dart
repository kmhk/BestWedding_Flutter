
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wedding_app/widgets/CustomDropDown.dart';
import 'package:sizer/sizer.dart';

class NewListingPage extends StatefulWidget{
  @override
  _NewListingPage createState() => _NewListingPage();
}

class _NewListingPage extends State<NewListingPage>{
  var list = ["Ariano","Jona"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.blueAccent,
              height: 10.0.h,
              margin: EdgeInsets.only(top: 5.0.h,left: 3.0.w,right: 3.0.w),
              alignment: Alignment.center,
              child: Text("prueba2",style: TextStyle(fontSize:15.0.sp),),
            ),
            Container(
              color: Colors.orange,
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.all(20.0),
              height: 8.0.h,
              child: Text("prueba3"),
            ),
            Container(
              padding: EdgeInsets.all(28),
              child: CustomDropDrown(list: list, defaultValue: "asd"),
            ),
            Container(
              padding: EdgeInsets.all(28),
              child: CustomDropDrown(list: list, defaultValue: "asd"),
            ),
            Container(
              padding: EdgeInsets.all(28),
              child: CustomDropDrown(list: list, defaultValue: "asd"),
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "Este es un textfield"
              ),
            ),
          ],
        ) ,
      )
    );
  }

}

