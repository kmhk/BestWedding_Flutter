
import 'package:dotted_border/dotted_border.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wedding_app/services/HelpersService.dart';
import 'package:wedding_app/themes/app_theme.dart';
import 'package:wedding_app/widgets/CustomDropDown.dart';
import 'package:sizer/sizer.dart';
import 'package:wedding_app/widgets/SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight.dart';
class NewListingUploadImagePage extends StatefulWidget{
  @override
  _NewListingUploadImagePage createState() => _NewListingUploadImagePage();
}

class _NewListingUploadImagePage extends State<NewListingUploadImagePage>{
  bool readDisclaimer = false;
  List<String> images = ["assets/placeholder.png","assets/placeholder.png","assets/placeholder.png","assets/placeholder.png","assets/placeholder.png","assets/placeholder.png","assets/placeholder.png","assets/placeholder.png","assets/placeholder.png"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 12.0.h,),
            Container(
              padding: EdgeInsets.only(left: 7.0.w, right: 7.0.w,top: 2.0.h),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  child: Text("Upload your images",
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.0.sp, color: AppTheme.colors.appTextColor),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 7.0.w, right: 7.0.w,top: 2.0.h),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  child: Text("You can add up to 30 photos. Our app only accepts ** resolution only. Ask some of your favourite previous clients or the photographer for permission to use some  of their professional shots.",
                    style: TextStyle(fontSize: 12.8.sp, color: Colors.black),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 8.0.w,right: 8.0.w,top: 2.0.h),
              child:Image.asset("assets/image_drop.png"),
            ),
            Container(
                margin: EdgeInsets.only(left: 7.0.w,right: 7.0.w,top: 2.0.h),
                child:GridView.builder(
                  padding: EdgeInsets.all(0.0),

                  shrinkWrap: true,
                  itemCount: images.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
                    crossAxisCount: 3,
                    crossAxisSpacing: 2.6.w,
                    mainAxisSpacing: 2.6.w,
                    height: 10.0.h,
                  ),
                  itemBuilder: (BuildContext context, int index){
                    return Image.asset(images[index],);
                  },
                )
            ),
            Container(
              margin: EdgeInsets.only(left: 7.0.w,right: 7.0.w,top: 2.0.h,bottom: 2.0.h),
              child: Column(
                children:<Widget> [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child:
                      Text("Disclaimer",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0.sp ,color: AppTheme.colors.appTextColor)),
                    ),
                  ),
                  SizedBox(height: 1.5.h,),

                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: readDisclaimer == true ? AppTheme.colors.appTextColor: AppTheme.colors.appTextColor,
                                width: 0.5.w),
                          ),
                          width: 2.8.h,
                          height: 2.8.h,
                          child: Theme(
                            data: ThemeData(unselectedWidgetColor: Colors.white),
                            child: Checkbox(
                              checkColor: AppTheme.colors.appTextColor,
                              activeColor: Colors.transparent,
                              value: readDisclaimer,
                              tristate: false,
                              onChanged: (bool isChecked) {
                                setState(() {
                                  readDisclaimer = isChecked;
                                });
                              },
                            ),
                          ),
                        ),
                        SizedBox(width: 1.5.w,),
                        /*Checkbox(value: readDisclaimer, onChanged: (bool value){
                          setState(() {
                            this.readDisclaimer = value;
                          });
                        }),*/
                        Align(
                          child: Text("I have read and understand the disclaimer",
                            style: TextStyle(color: Colors.black, fontSize: 11.0.sp),),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 1.5.h,),

                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 1.0.h,),
                    child: RaisedButton(

                      onPressed: () {HelpersService.push(context, '/previewListingPage');},
                      padding: EdgeInsets.only(top: 3.2.h,bottom: 3.2.h,left: 1.0.w, right: 1.0.w),
                      color: AppTheme.colors.appNavy,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius:BorderRadius.circular(6) ,
                          side: BorderSide(width: 0.1.w, color: Colors.grey)
                      ),
                      child: Text("PREVIEW",
                          style: TextStyle(fontSize: 15, color: Colors.white)),
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