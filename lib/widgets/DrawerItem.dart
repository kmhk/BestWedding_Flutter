
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DrawerItem extends StatefulWidget{

  var title;
  Function onSelectItem;

  DrawerItem({@required this.title,@required this.onSelectItem});

  @override
  _DrawerItem createState() => _DrawerItem();
}

class _DrawerItem extends State<DrawerItem>{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6.5.h,
      child: GestureDetector(
        onTap: () => {
          widget.onSelectItem
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  flex: 13,
                  child: Text(widget.title,style: TextStyle(fontSize: 14.0.sp),),
                ),
                Expanded(
                  flex: 1,
                  child: Icon(Icons.chevron_right,size: 20.0.sp,),
                )
              ],
            ),

          ],
        ),
      ),
    );
  }

}