
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:table_calendar/table_calendar.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:wedding_app/widgets/CustomDropDown.dart';

class SubscriberCalendar5Page extends StatefulWidget{

  _SubscriberCalendar5Page createState() => _SubscriberCalendar5Page();
}

class _SubscriberCalendar5Page extends State<SubscriberCalendar5Page>{
  var list = ["prueba1","prueba2","prueba3"];
  CameraPosition vegasPosition = CameraPosition(target: LatLng(36.0953103, -115.1992098), zoom: 10);
  int selectedRadio;
  CalendarController _calendarController;

  Widget _buildGoogleMap(BuildContext context) {
    return Positioned(
      left: 50,
      right: 30,
      top: 100,
      bottom: 300,
      child: Container(
        child: GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition: vegasPosition,
        ),
      ),
    );
  }

  void initState(){
    super.initState();
    selectedRadio = 0;
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
            Container(
              margin: EdgeInsets.only(top: 3.5.h, left: 7.0.w, right: 7.0.w),

              child: Column(

                children: <Widget>[
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      child: Text("Select times not available",
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.0.sp, color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(height: 1.0.h,),
                  Row(

                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(1.5.h)
                          ),
                          onPressed: () {},
                          padding: EdgeInsets.only(top: 2.5.h,bottom: 2.5.h,left: 1.0.w, right: 1.0.w),
                          color: Color.fromARGB(255, 71, 138, 123),
                          textColor: Colors.white,
                          child: Text("MORNING",
                              style: TextStyle(fontSize: 8.0.sp, fontWeight: FontWeight.normal)),
                        ),
                      ),
                      Container(

                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(1.5.h)
                          ),
                          onPressed: () {},
                          padding: EdgeInsets.only(top: 2.5.h,bottom: 2.5.h,left: 1.0.w, right: 1.0.w),
                          color: Color.fromARGB(255, 71, 138, 123),
                          textColor: Colors.white,
                          child: Text("AFTERNOON",
                              style: TextStyle(fontSize: 8.0.sp, fontWeight: FontWeight.normal)),
                        ),
                      ),
                      Container(

                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(1.5.h)
                          ),
                          onPressed: () {},
                          padding: EdgeInsets.only(top: 2.5.h,bottom: 2.5.h,left: 1.0.w, right: 1.0.w),
                          color: Color.fromARGB(255, 71, 138, 123),
                          textColor: Colors.white,
                          child: Text("EVENING",
                              style: TextStyle(fontSize: 8.0.sp, fontWeight: FontWeight.normal)),
                        ),
                      ),


                    ],
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 3.5.h, left: 7.0.w, right: 7.0.w),
              child: RaisedButton(
                onPressed: () {},
                padding: EdgeInsets.only(top: 2.5.h,bottom: 2.5.h,left: 1.0.w, right: 1.0.w),
                color: Colors.green,
                textColor: Colors.white,
                child: Text("Update",
                    style: TextStyle(fontSize: 11.0.sp)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 3.5.h, left: 7.0.w, right: 7.0.w),

              child: Column(
                children:<Widget> [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      child: Text("Pin Location",
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.0.sp, color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(height:1.0.h),
                  Text("Pin your location to let potential clients know you’re in the area. This will alow you to book multiple weddings on a given day. ",
                    style: TextStyle(fontSize: 11.0.sp, color: Colors.black),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      margin: EdgeInsets.only(top: 1.0.h),

                      child: Text("Enter address",
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.0.sp, color: Color.fromARGB(255, 193, 192, 201)),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 1.0.h),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0.5.h),
                        color: Color.fromARGB(255, 248, 248, 248),
                        border: Border.all(
                          color: Color.fromARGB(255, 239, 239, 239),
                        )
                    ),
                    child: Row(
                      children:<Widget> [
                        Radio(value: 0, groupValue: selectedRadio, onChanged: (val){
                        },activeColor: Color.fromARGB(255,76, 229, 177),),
                        Flexible(child: TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 1.0.h, horizontal: 5.0.w),
                            hintText: "Enter Post Code",
                            enabledBorder:OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 248, 248, 248),
                                  style: BorderStyle.solid
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 248, 248, 248),
                                  style: BorderStyle.solid
                              ),
                            ),
                            suffixIcon: Image.asset("assets/current_location.png"),
                          ),
                        ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 20.0.h,

                    child: GoogleMap(
                      mapType: MapType.normal,
                      initialCameraPosition: vegasPosition,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 3.5.h, left: 1.0.w, right: 1.0.w),
                    child: RaisedButton(
                      onPressed: () {},
                      padding: EdgeInsets.only(top: 2.5.h,bottom: 2.5.h,left: 1.0.w, right: 1.0.w),
                      color: Colors.green,
                      textColor: Colors.white,
                      child: Text("Submit",
                          style: TextStyle(fontSize: 13)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.0.h,)
          ],
        ),
      ),
    );
  }
}

