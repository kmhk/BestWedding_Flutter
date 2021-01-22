
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wedding_app/services/SDP.dart';
import 'package:wedding_app/services/HelpersService.dart';
import 'package:sizer/sizer.dart';

class GetStartedPage extends StatefulWidget{
  @override
  _GetStartedPage createState() => new _GetStartedPage();
}

class _GetStartedPage extends State<GetStartedPage>{
  var checkedValue = false;
  var checkedValue2 = false;
  @override
  Widget build(BuildContext context) {
    SDP.init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/introimage2.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: new Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 5,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(4.0.w, 3.0.h, 0, 0),
                        alignment: Alignment.topLeft,
                        child: GestureDetector(
                          onTap: () => {
                            HelpersService.backTo(context, '/intro2')
                          },
                          child: CircleAvatar(
                            radius: 1.8.h,
                            backgroundImage: AssetImage("assets/world_icon.png"),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(0, 3.0.h, 4.0.w, 0),
                        alignment: Alignment.topRight,
                        child: GestureDetector(
                          onTap: () => {
                            HelpersService.push(context, '/login')
                          },
                          child: Text("Login",style: TextStyle(fontSize: 12.0.sp),),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(4.0.w, 3.0.h, 4.0.w, 0),
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text("Get Started",style: TextStyle(fontSize: 25.0.sp)),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 2.0.h),
                        alignment: Alignment.topLeft,
                        child: Text("Let’s get started by setting up your account details here.",style: TextStyle(fontSize: 12.0.sp,color: Colors.black45)),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 2.0.h) ,
                        height: 5.8.h,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Name',
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 1.5.h) ,
                        height: 5.8.h,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Email Address',
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 1.5.h) ,
                        height: 5.8.h,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Date of Birth',
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 1.5.h) ,
                        height: 5.8.h,
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Create Password',
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 1.5.h) ,
                        height: 5.8.h,
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Confirm Password',
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(top: 3.0.h) ,
                        child: Text("Setup account using google or facebook",style: TextStyle(decoration: TextDecoration.underline),),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 3.0.h) ,
                        height: 4.0.h,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Checkbox(
                                value: checkedValue,
                                onChanged:(value){
                                  setState(() {
                                    checkedValue = value;
                                  });
                                },
                              ),
                            ),
                            Expanded(
                              flex: 9,
                              child: Text("test Text"),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 5.0.h,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Checkbox(
                                value: checkedValue2,
                                onChanged:(value){
                                  setState(() {
                                    checkedValue2 = value;
                                  });
                                },
                              ),
                            ),
                            Expanded(
                              flex: 9,
                              child: Text("test Text"),
                            )
                          ],
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.fromLTRB(15.0.w, 3.0.h, 15.0.w, 0),
                        child: ButtonTheme(
                          minWidth: 200.0.w,
                          height: 6.0.h,
                          child: RaisedButton(
                            onPressed: () {
                              //HelpersService.push(context, '/getStartedIntro');
                            },
                            child: Text('SET UP ACCOUNT', style: TextStyle(fontSize:12.0.sp)),
                            color: Colors.transparent,
                            textColor: Colors.black38,
                            shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0.sp),side: BorderSide(color: Colors.black38)),
                            elevation: 0,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 5.0.h, 0, 0),
                        alignment: Alignment.topLeft,
                        child: Text("Once you’ve logged go to your profile settings to add more details to your profile"),
                      )
                    ],
                  ),
                )
              ],
            )
        ),
      )
    );

  }
}