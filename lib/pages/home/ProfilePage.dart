
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ProfilePage extends StatefulWidget{
  @override
  _ProfilePage createState() => _ProfilePage();
}

class _ProfilePage extends State<ProfilePage>{
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset("assets/img_cakes.png",height:25.0.h,width: 25.0.h,fit: BoxFit.fill,),
                Icon(Icons.edit,color: Colors.black12,),
              ],
            )
          ],
        ),
      )
    );
  }

}