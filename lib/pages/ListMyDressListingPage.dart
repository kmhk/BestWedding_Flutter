

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wedding_app/themes/app_theme.dart';
import 'package:wedding_app/widgets/CustomDropDown.dart';
import 'package:sizer/sizer.dart';

class ListMyDressListingPage extends StatefulWidget{
  @override
  _ListMyDressListingPage createState() => _ListMyDressListingPage();
}

class _ListMyDressListingPage extends State<ListMyDressListingPage>{

  var list = ["prueba1","prueba2","prueba3"];

  final appNavy = const Color(0x161729);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children:<Widget> [
            Container(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 7.0.w, right: 7.0.w,top: 10.0.h),
                    child: CustomDropDrown(list: list, defaultValue: "Select Category"),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 7.0.w, right: 7.0.w,top: 2.0.h),
                    child: CustomDropDrown(list: list, defaultValue: "Select Condition"),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 7.0.w,right: 7.0.w,top: 2.0.h),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child:
                      Text("About the item",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0.sp ,color: AppTheme.colors.appTextColor)),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 5.0.w),
                      child:Column(
                        children:<Widget>[
                          TextField(
                            textAlign: TextAlign.left,
                            minLines: 2,
                            maxLines: 4,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 6.0.h, horizontal: 5.0.w),
                              hintText: "First impressions count, describe your dress, in 50 words or less.",
                              enabledBorder:OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: AppTheme.colors.appNavy,
                                    style: BorderStyle.solid
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: AppTheme.colors.appNavy,
                                    style: BorderStyle.solid
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 2.0.h,),
                          TextField(
                            textAlign: TextAlign.left,
                            minLines: 1,
                            maxLines: 2,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 1.0.h, horizontal: 5.0.w),
                              hintText: "Enter Dress Maker",
                              enabledBorder:OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: AppTheme.colors.appNavy,
                                    style: BorderStyle.solid
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: AppTheme.colors.appNavy,
                                    style: BorderStyle.solid
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5.0.w),
                    child: Column(
                      children:<Widget> [
                        Container(
                          child: CustomDropDrown(list: list, defaultValue: "Dress Size"),
                        ),
                        SizedBox(height: 1.0.h,),
                        Container(
                          child: CustomDropDrown(list: list, defaultValue: "Material"),
                        ),
                        SizedBox(height: 1.0.h,),
                        Container(
                          child: CustomDropDrown(list: list, defaultValue: "Condition"),
                        ),
                        SizedBox(height: 1.0.h,),
                      ],
                    ),
                  ),
                  SizedBox(height: 2.0.h,),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child:
                      Text("Dress Location",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0.sp ,color: AppTheme.colors.appTextColor)),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 7.0.w),
                      child:Column(
                        children:<Widget>[
                          Container(
                            child: CustomDropDrown(list: list, defaultValue: "Post code"),
                          ),
                          SizedBox(height: 1.0.h,),
                          Container(
                            child: CustomDropDrown(list: list, defaultValue: "Asking Price"),
                          ),
                        ],
                      )
                  ),
                  SizedBox(height: 2.0.h,),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child:
                      Text("Contact Details",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0.sp ,color: AppTheme.colors.appTextColor)),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 7.0.w),
                      child:Column(
                        children:<Widget>[
                          TextField(
                            textAlign: TextAlign.left,
                            minLines: 1,
                            maxLines: 1,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 1.0.h, horizontal: 5.0.w),
                              hintText: "Phone Number",
                              enabledBorder:OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: AppTheme.colors.appNavy,
                                    style: BorderStyle.solid
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: AppTheme.colors.appNavy,
                                    style: BorderStyle.solid
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 2.0.h,),
                          TextField(
                            textAlign: TextAlign.left,
                            minLines: 1,
                            maxLines: 1,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 1.0.h, horizontal: 5.0.w),
                              hintText: "Email Address",
                              enabledBorder:OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: AppTheme.colors.appNavy,
                                    style: BorderStyle.solid
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: AppTheme.colors.appNavy,
                                    style: BorderStyle.solid
                                ),
                              ),
                            ),
                          ),

                        ],
                      )
                  ),
                  SizedBox(height: 2.0.h,),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 3.5.h, left: 1.0.w, right: 1.0.w),
                    child: RaisedButton(
                      onPressed: () {},
                      padding: EdgeInsets.only(top: 3.2.h,bottom: 3.2.h,left: 1.0.w, right: 1.0.w),
                      textColor: AppTheme.colors.appTextColor,
                      color: AppTheme.colors.appWhite,
                      shape: RoundedRectangleBorder(
                        borderRadius:BorderRadius.circular(6) ,
                        side: BorderSide(width: 0.4.w, color: AppTheme.colors.appNavy)
                      ),
                      child: Text("NEXT",
                          style: TextStyle(fontSize: 15)),
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