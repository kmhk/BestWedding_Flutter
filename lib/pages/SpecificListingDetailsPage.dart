
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:wedding_app/services/HelpersService.dart';
import 'package:wedding_app/widgets/CustomDropDown.dart';

class SpecificListingDetailsPage extends StatefulWidget{
  @override
  _SpecificListingDetailsPage createState() => _SpecificListingDetailsPage();
}

class _SpecificListingDetailsPage extends State<SpecificListingDetailsPage>{
  var list = ["prueba1","prueba2","prueba3"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(

        child: Column(
          children: <Widget>[
            SizedBox(height: 15.0.h,),
            Container(
              padding: EdgeInsets.only(left: 7.0.w, right: 7.0.w,top: 2.0.h),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  child: Text("Bridal Listing",
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0.sp, color: Colors.black),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 7.0.w,right: 7.0.w,top: 2.0.h),

              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 1.0.h, horizontal: 5.0.w),
                      hintText: "Price List",
                      enabledBorder:OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.grey,
                            style: BorderStyle.solid
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.orange,
                            style: BorderStyle.solid
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 2.0.h),
                    child: CustomDropDrown(list: list, defaultValue: "Average Price"),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 2.0.h),
                    child: CustomDropDrown(list: list, defaultValue: "Services"),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 2.0.h),
                    child: CustomDropDrown(list: list, defaultValue: "Appointment Needed"),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 2.0.h),
                    child: CustomDropDrown(list: list, defaultValue: "What styles do you specialise in?"),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 2.0.h),
                    child: CustomDropDrown(list: list, defaultValue: "Do you sell accessories"),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 2.0.h),
                    child: CustomDropDrown(list: list, defaultValue: "What payments do you accept"),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 2.0.h),
                    child: CustomDropDrown(list: list, defaultValue: "What are your payment terms"),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 2.0.h),
                    child: CustomDropDrown(list: list, defaultValue: "When should they book you"),
                  ),
                  Container(

                    width: double.infinity,
                    margin: EdgeInsets.only(top: 3.5.h, left: 1.0.w, right: 1.0.w),
                    child: RaisedButton(
                      onPressed: () {HelpersService.push(context, '/editListingUploadImage');},
                      padding: EdgeInsets.only(top: 2.5.h,bottom: 2.5.h,left: 1.0.w, right: 1.0.w),
                      color: Colors.green,
                      textColor: Colors.white,
                      child: Text("NEXT",
                          style: TextStyle(fontSize: 13)),
                    ),
                  ),
                  SizedBox(height: 12.0.h,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
