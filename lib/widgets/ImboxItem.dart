
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ImboxItem extends StatefulWidget{
  String name;
  String message;
  ImboxItem({@required this.name,@required this.message});

  @override
  _ImboxItem createState() => _ImboxItem();
}
class _ImboxItem extends State<ImboxItem>{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 0,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Image.asset("assets/elipse_grey.png",width: 1.5.h,height: 1.5.h,),
              flex: 1,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Text(widget.name,style: TextStyle(fontSize: 13.0.sp,fontWeight: FontWeight.bold),),
                    alignment: Alignment.topLeft,
                  ),
                  Container(
                    child: Text(widget.message,style: TextStyle(fontSize: 10.0.sp),),
                    alignment: Alignment.topLeft,
                  ),
                ],
              ),
              flex: 8,
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Icon(Icons.arrow_forward_ios_sharp,size: 13.0.sp,),
              ),
              flex: 1,
            )
          ],
        ),

      ),
    );
  }

}