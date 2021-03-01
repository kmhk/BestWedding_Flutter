
import 'package:table_calendar/table_calendar.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:wedding_app/widgets/CustomDropDown.dart';

class SubscriberCalendar2Page extends StatefulWidget{

  _SubscriberCalendar2Page createState() => _SubscriberCalendar2Page();
}

class _SubscriberCalendar2Page extends State<SubscriberCalendar2Page>{
  var list = ["prueba1","prueba2","prueba3"];

  CalendarController _calendarController;

  void initState(){
    super.initState();
    _calendarController = CalendarController();
  }
  Widget calendar(){
    return Container(


        margin: EdgeInsets.only(left: 7.0.w, right: 7.0.w,top: 2.0.h),
        width: double.infinity,
        decoration: BoxDecoration(
            color: Color.fromARGB(1, 17, 15, 36),
            borderRadius: BorderRadius.circular(6),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Color.fromARGB(255, 17, 15, 36),
                  blurRadius: 0,
                  offset: new Offset(0.0, 5)
              )
            ]
        ),
        child: TableCalendar(

          calendarStyle: CalendarStyle(
            canEventMarkersOverflow: true,
            markersColor: Colors.white,
            weekdayStyle: TextStyle(color: Colors.white),

            todayColor: Colors.orange,
            todayStyle: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
            selectedColor: Colors.red[900],
            selectedStyle: TextStyle(color: Color.fromARGB(255, 208, 60, 60), fontSize: 15, fontWeight: FontWeight.bold),
            outsideWeekendStyle: TextStyle(color: Colors.white60),
            outsideStyle: TextStyle(color: Colors.white60),
            weekendStyle: TextStyle(color: Colors.white),
            renderDaysOfWeek: false,
          ),
          calendarController: _calendarController,

          headerStyle: HeaderStyle(
            centerHeaderTitle: true,
            titleTextStyle: TextStyle(color: Colors.white),
            leftChevronIcon: Icon(Icons.arrow_back_ios, size: 15, color: Colors.white),
            rightChevronIcon: Icon(Icons.arrow_forward_ios, size: 15, color: Colors.white),
            formatButtonVisible: false,
            formatButtonDecoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        )
    );
  }

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
                  child: Text("Keep your calendar up to date so that potential customers know when you’re not available. You do not need to enable this function. The app will still match you to clients and it will be up to you to communicate your available dates with them.",
                    style: TextStyle(fontSize: 12.8.sp, color: Colors.black),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 7.0.w, right: 7.0.w,top: 2.0.h),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  child: Text("Tap on the date to block out",
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.0.sp, color: Colors.black),
                  ),
                ),
              ),
            ),
            calendar(),
            Container(
                padding: EdgeInsets.only(left: 7.0.w, right: 7.0.w,top: 2.0.h),

                child:Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.bottomLeft,
                    child:
                    Text("EDIT",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14.0.sp)),
                  ),
                  SizedBox(height: 2.0.h,),
                  Row(
                    children: <Widget>[
                      Text("Update ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.0.sp)),
                      Text("28 July 2020",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 13.0.sp)),

                    ],
                  ),
                  SizedBox(height: 1.0.h,),
                  CustomDropDrown(list: list, defaultValue: "Select Availability"),
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}

