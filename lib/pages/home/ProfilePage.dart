
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:sizer/sizer.dart';
import 'package:wedding_app/resources/values/AppColors.dart';
import 'package:wedding_app/widgets/CustomDropDown.dart';

class ProfilePage extends StatefulWidget{
  @override
  _ProfilePage createState() => _ProfilePage();
}

class _ProfilePage extends State<ProfilePage>{
  var list = ["prueba1","prueba2","prueba3"];
  var genderList = ["Male","Female"];
  var countryList = ["Country1","Country2"];
  var stateList =["State1","State2"];
  bool statusEmail = false;
  bool statusMessages = false;

  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset("assets/img_cakes.png",height:25.0.h,width: 25.0.h,fit: BoxFit.fill,),
                Container(
                  margin: EdgeInsets.only(top: 20.5.h,left: 20.5.h),
                  child: Image.asset("assets/edit_icon.png",height: 3.5.h,width: 3.5.h,color: Colors.black,),
                )

              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 7.0.w,right: 7.0.w,top: 2.0.h),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 1.0.h, horizontal: 5.0.w),
                      hintText: "Name",
                      enabledBorder:OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.grey,
                            style: BorderStyle.solid
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.PRIMARY_COLOR,
                            style: BorderStyle.solid
                        ),
                      ),
                      suffixIcon: Image.asset("assets/edit_icon.png",height: 1.0.w,scale: 2,),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 2.0.h, bottom: 2.0.h),
                    child: CustomDropDrown(list: genderList, defaultValue: "Gender"),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 1.0.h, horizontal: 5.0.w),
                      hintText: "Email Address",
                      enabledBorder:OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.grey,
                            style: BorderStyle.solid
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.PRIMARY_COLOR,
                            style: BorderStyle.solid
                        ),
                      ),
                      suffixIcon: Image.asset("assets/edit_icon.png",height: 1.0.w,scale: 2,),

                    ),
                  ),
                  SizedBox(height: 2.0.h),
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 1.0.h, horizontal: 5.0.w),
                      hintText: "Phone",
                      enabledBorder:OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.grey,
                            style: BorderStyle.solid
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.PRIMARY_COLOR,
                            style: BorderStyle.solid
                        ),
                      ),
                      suffixIcon: Image.asset("assets/edit_icon.png",height: 1.0.w,scale: 2,),

                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 2.0.h),
                    child: CustomDropDrown(list: countryList, defaultValue: "Country"),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 2.0.h),
                    child: CustomDropDrown(list: stateList, defaultValue: "State"),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 2.0.h,bottom: 2.0.h),
                    child: CustomDropDrown(list: list, defaultValue: "Region"),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 1.0.h, horizontal: 5.0.w),
                      hintText: "Username",
                      enabledBorder:OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.grey,
                            style: BorderStyle.solid
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.PRIMARY_COLOR,
                            style: BorderStyle.solid
                        ),
                      ),
                      suffixIcon: Image.asset("assets/edit_icon.png",height: 1.0.w,scale: 2,),

                    ),
                  ),
                  SizedBox(height: 2.0.h),
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 1.0.h, horizontal: 5.0.w),
                      hintText: "Change Password",
                      enabledBorder:OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.grey,
                            style: BorderStyle.solid
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.PRIMARY_COLOR,
                            style: BorderStyle.solid
                        ),
                      ),
                      suffixIcon: Image.asset("assets/edit_icon.png",height: 1.0.w,scale: 2,),

                    ),
                  ),
                  SizedBox(height: 3.0.h),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      child: Text("Payments",
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.0.sp, color: Colors.black),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 2.0.h),
                    child: CustomDropDrown(list: list, defaultValue: "Mastercard or Visa"),
                  ),
                  SizedBox(height: 2.0.h),
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 1.0.h, horizontal: 5.0.w),
                      hintText: "Name on Card",
                      enabledBorder:OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.grey,
                            style: BorderStyle.solid
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.PRIMARY_COLOR,
                            style: BorderStyle.solid
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 2.0.h),
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 1.0.h, horizontal: 5.0.w),
                      hintText: "Card #",
                      enabledBorder:OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.grey,
                            style: BorderStyle.solid
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.PRIMARY_COLOR,
                            style: BorderStyle.solid
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 2.0.h),
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 1.0.h, horizontal: 5.0.w),
                      hintText: "Expiry Date",
                      enabledBorder:OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.grey,
                            style: BorderStyle.solid
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.PRIMARY_COLOR,
                            style: BorderStyle.solid
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 2.0.h),
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 1.0.h, horizontal: 5.0.w),
                      hintText: "CVV",
                      enabledBorder:OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.grey,
                            style: BorderStyle.solid
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.PRIMARY_COLOR,
                            style: BorderStyle.solid
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 3.0.h),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      child: Text("Notification",
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.0.sp, color: Colors.black),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 6.0.w,right: 6.0.w,top: 2.0.h),
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: <Widget>[
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Text("Email Notifications",
                                  style: TextStyle(color: Colors.grey),),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: FlutterSwitch(
                                  width: 7.0.w,
                                  height: 2.0.h,
                                  inactiveToggleColor: Colors.black54,
                                  activeToggleColor: AppColors.PRIMARY_COLOR,
                                  activeColor: Colors.white,
                                  inactiveColor: Colors.white,
                                  toggleSize: 2.5.w,
                                  value: statusEmail,
                                  borderRadius: 30.0,
                                  padding: 0.0,
                                  showOnOff: false,
                                  activeSwitchBorder: Border.all(
                                    color: Colors.red,
                                    width: 0.7.w,
                                  ),
                                  inactiveSwitchBorder: Border.all(
                                    color: Colors.black54,
                                    width: 0.7.w,
                                  ),
                                  onToggle: (val) {
                                    setState(() {
                                      statusEmail = val;
                                    });
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 2.0.h,),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: <Widget>[
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Text("Text Messages",
                                  style: TextStyle(color: Colors.grey),),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: FlutterSwitch(
                                  width: 7.0.w,
                                  height: 2.0.h,
                                  inactiveToggleColor: Colors.black54,
                                  activeToggleColor: Colors.red,
                                  activeColor: Colors.white,
                                  inactiveColor: Colors.white,
                                  toggleSize: 2.5.w,
                                  value: statusMessages,
                                  borderRadius: 30.0,
                                  padding: 0.0,
                                  showOnOff: false,
                                  activeSwitchBorder: Border.all(
                                    color: Colors.red,
                                    width: 0.7.w,
                                  ),
                                  inactiveSwitchBorder: Border.all(
                                    color: Colors.black54,
                                    width: 0.7.w,
                                  ),
                                  onToggle: (val) {
                                    setState(() {
                                      statusMessages = val;
                                    });
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 3.0.h,),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      child: Text("My Listing",
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.0.sp, color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(height: 3.0.h,),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      child: Text("To cancel your subscription please contact bla bla bla. ",
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10.0.sp, color: Colors.grey),
                      ),
                    ),
                  ),
                  SizedBox(height: 3.0.h,),
                  Container(
                    child: Column(
                      children:<Widget> [
                        Container(
                          padding: EdgeInsets.only(bottom: 2.0.h),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom:BorderSide(width: 0.1.h,color: Colors.grey),
                            ),
                          ),
                          child: Row(
                            children:<Widget> [
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  child: Text("Celebrant Listing",
                                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10.0.sp, color: Colors.grey),
                                  ),
                                ),
                              ),
                              Spacer(),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  child: Text( "Paid to 10 Nov 2020",
                                    style: TextStyle(fontWeight: FontWeight.normal,fontSize: 10.0.sp, color: Colors.grey),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 2.0.h,),
                        Container(padding: EdgeInsets.only(bottom: 2.0.h),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom:BorderSide(width: 0.1.h,color: Colors.grey),
                            ),
                          ),
                          child: Row(

                            children:<Widget> [
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  child: Text("Wedding Singer Listing",
                                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10.0.sp, color: Colors.grey),
                                  ),
                                ),
                              ),
                              Spacer(),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  child: Text( "Paid to 10 Nov 2020",
                                    style: TextStyle(fontWeight: FontWeight.normal,fontSize: 10.0.sp, color: Colors.grey),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 3.5.h, bottom: 1.0.h),
                    child: RaisedButton(
                      onPressed: () {},
                      padding: EdgeInsets.only(top: 2.2.h,bottom: 2.2.h,left: 1.0.w, right: 1.0.w),
                      color: AppColors.PRIMARY_COLOR,
                      textColor: Colors.grey,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(width: 0.1.w, color: Colors.grey)
                      ),
                      child: Text("SAVE",
                          style: TextStyle(fontSize: 15)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}