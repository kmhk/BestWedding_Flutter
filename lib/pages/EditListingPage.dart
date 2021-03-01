

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wedding_app/services/HelpersService.dart';
import 'package:wedding_app/widgets/CustomDropDown.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_switch/flutter_switch.dart';

class EditListingPage extends StatefulWidget{
  _EditListingPage createState() => _EditListingPage();
}

class _EditListingPage extends State<EditListingPage>{
  var list = ["prueba1","prueba2","prueba3"];
  bool status = false;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.white,
       body: SingleChildScrollView(
         child: Column(
           children: <Widget>[

             Container(
               child: Column(
                 children: <Widget>[
                   Container(
                     padding: EdgeInsets.only(left: 7.0.w, right: 7.0.w,top: 10.0.h),
                     child: CustomDropDrown(list: list, defaultValue: "Select Category"),
                   ),

                   Container(
                     padding: EdgeInsets.only(left: 7.0.w, right: 7.0.w,top: 2.0.h),
                     child: CustomDropDrown(list: list, defaultValue: "Sub Categories"),
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
                       Text("A bit about you",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0.sp ,color: Colors.black)),
                     ),
                   ),
                   Container(
                       margin: EdgeInsets.only(top: 7.0.w),
                       child:Column(
                         children:<Widget>[
                           TextField(
                             decoration: InputDecoration(
                               contentPadding: EdgeInsets.symmetric(vertical: 1.0.h, horizontal: 5.0.w),
                               hintText: "Enter your business name",
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
                           SizedBox(height: 1.0.h,),
                           TextField(
                             textAlign: TextAlign.left,
                             minLines: 2,
                             maxLines: 4,
                             decoration: InputDecoration(
                               contentPadding: EdgeInsets.symmetric(vertical: 6.0.h, horizontal: 5.0.w),
                               hintText: "First impressions count, so make sure your profile pops, in 50 words or less.",
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
                           SizedBox(height: 1.0.h,),
                           TextField(
                             textAlign: TextAlign.left,
                             minLines: 2,
                             maxLines: 4,
                             decoration: InputDecoration(
                               contentPadding: EdgeInsets.symmetric(vertical: 6.0.h, horizontal: 5.0.w),
                               hintText: "Detailed profile of your service. Maximum 200 Characters",
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
                         ],
                       )
                   ),
                   Container(
                     margin: EdgeInsets.only(top: 5.0.w),
                     child: Column(
                       children:<Widget> [
                         Container(
                           child: CustomDropDrown(list: list, defaultValue: "State/Region"),
                         ),
                         SizedBox(height: 1.0.h,),
                         Container(
                           child: CustomDropDrown(list: list, defaultValue: "Post Code"),
                         ),
                         SizedBox(height: 1.0.h,),
                         Container(
                           child: CustomDropDrown(list: list, defaultValue: "How far will you travel"),
                         ),
                         SizedBox(height: 1.0.h,),
                         Container(
                           child: CustomDropDrown(list: list, defaultValue: "My price range"),
                         ),
                         SizedBox(height: 1.0.h,),
                       ],
                     ),
                   ),
                   Container(
                     margin: EdgeInsets.only(top: 3.5.w),
                     child: Column(
                       children: <Widget>[
                         Container(
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,

                             children: <Widget>[
                               Align(
                                 alignment: Alignment.bottomRight,
                                 child: Text("I am ethical and sustainable???",
                                   style: TextStyle(color: Colors.grey),),
                               ),
                               Align(
                                 alignment: Alignment.centerRight,
                                 child: FlutterSwitch(
                                   width: 7.0.w,
                                   height: 2.0.h,
                                   inactiveToggleColor: Colors.black54,
                                   activeToggleColor: Colors.orange,
                                   activeColor: Colors.white,
                                   inactiveColor: Colors.white,
                                   toggleSize: 2.5.w,
                                   value: status,
                                   borderRadius: 30.0,
                                   padding: 0.0,
                                   showOnOff: false,
                                   switchBorder: Border.all(
                                     color: Colors.black54,
                                     width: 0.7.w,
                                   ),
                                   onToggle: (val) {
                                     setState(() {
                                       status = val;
                                     });
                                   },
                                 ),
                               )
                             ],
                           ),
                         ),
                         Container(
                           width: double.infinity,
                           margin: EdgeInsets.only(top: 3.5.h),
                           child: RaisedButton(
                             onPressed: () { HelpersService.push(context, '/specificListingDetails');},
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
                   )
                 ],
               ),
             ),
           ],
         ) ,
       )

   );
  }
}