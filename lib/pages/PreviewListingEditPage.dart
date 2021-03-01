

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:carousel_pro/carousel_pro.dart';

class PreviewListingEditPage extends StatefulWidget{
  @override
  _PreviewListingEditPage createState() => _PreviewListingEditPage();
}

class _PreviewListingEditPage extends State<PreviewListingEditPage>{
  List<String> imagesTest = ["assets/placeholder.png","assets/placeholder.png","assets/placeholder.png","assets/placeholder.png","assets/placeholder.png","assets/placeholder.png","assets/placeholder.png","assets/placeholder.png","assets/placeholder.png"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20.0.w,),
            Container(
              alignment: Alignment.bottomLeft,
              width: double.infinity,
              margin: EdgeInsets.only(top: 1.0.h, left: 7.0.w, right: 7.0.w),
              child: RaisedButton(
                onPressed: () {},
                padding: EdgeInsets.only(top: 0.2.h,bottom: 0.2.h,left: 1.0.w, right: 1.0.w),
                elevation: 0,
                shape: RoundedRectangleBorder(
                    side: BorderSide(width: 0.1.w, color: Colors.white)
                ),
                color: Colors.white,
                child: Text("< back to edit listing",
                    style: TextStyle(fontSize: 15)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 1.0.h, left: 4.0.w, right: 4.0.w),
              child: Row(
                children: <Widget>[
                  ClipOval(
                    child: Image.asset(
                      "assets/placeholder.png",
                      height: 6.0.h,
                      width:  6.0.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 3.0.w,),
                  Text("Supplier Name",style: TextStyle(fontSize: 17.0.sp, fontWeight: FontWeight.w900,),)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 4.0.h),
              height: 50.0.h,
              width: 100.0.w,
              child: Stack(
                children: <Widget>[
                  Carousel(
                    images: [
                      Image.asset('assets/imageTest.png'),
                      Image.asset('assets/placeholder.png'),
                      Image.asset("assets/placeholder.png")
                    ],
                    dotVerticalPadding: 4.0.w,
                    boxFit: BoxFit.cover,
                    dotSize: 1.4.h,
                    dotSpacing: 2.7.h,
                    dotColor: Colors.white,
                    animationDuration: const Duration(milliseconds: 100),
                    dotIncreaseSize: 1.01,
                    dotIncreasedColor: Colors.red,
                    indicatorBgPadding: 5.0,
                    dotBgColor: Colors.black.withOpacity(0.0),
                    borderRadius: false,
                    autoplay: false,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: double.infinity,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,

                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: 4.0.w,right: 4.0.w),
                            child: Image.asset("assets/chat_icon.png",height: 9.0.w,width: 9.0.w,),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 4.0.w,right: 4.0.w),
                            child: Image.asset("assets/call_icon.png",height: 9.0.w,width: 9.0.w,),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 4.0.w,right: 4.0.w),
                            child: Image.asset("assets/check_avi_icon.png",height: 9.0.w,width: 9.0.w,),
                          ),
                          Spacer(),
                          Container(
                            margin: EdgeInsets.only(top: 4.0.w,right: 4.0.w,bottom: 4.0.w),
                            child: Image.asset("assets/sustainable_icon.png",height: 9.0.w,width: 9.0.w,),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 7.0.w,right: 7.0.w,top: 2.0.h),
              child: Column(
                children: <Widget>[
                  Container(

                    child:Column(

                      children: <Widget>[
                        Container(
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              child: Text("About",
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.0.sp, color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 1.0.h),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus maximus fringilla metus vel efficitur. Pellentesque quis elit suscipit, varius nulla sed, tristique odio. Aenean aliquam, mi nec varius auctor, nisl tellus rhoncus odio, vitae condimentum ligula neque sed ligula. Aliquam porttitor consequat urna at vestibulum.",
                                style: TextStyle(fontSize: 12.8.sp, color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 4.0.h,),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only( right: 1.0.w),
                    child: RaisedButton(

                      onPressed: () {},
                      padding: EdgeInsets.only(top: 3.2.h,bottom: 3.2.h,left: 1.0.w, right: 1.0.w),
                      color: Color.fromRGBO(229, 60, 60, 1),
                      textColor: Colors.grey,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(width: 0.1.w, color: Colors.grey)
                      ),
                      child:
                      RichText(text : TextSpan(children: [
                        TextSpan(text: "UPDATE LISTING NOW",style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal, color: Colors.white)),
                        ]),),
                    ),
                  ),
                  SizedBox(height: 12.0.h,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}