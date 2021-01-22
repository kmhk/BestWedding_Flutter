
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomDropDrown extends StatefulWidget{
  var list = <String>[];
  var defaultValue = "";
  CustomDropDrown({@required this.list,@required this.defaultValue});
  @override
  _CustomDropDrown createState() => _CustomDropDrown();
}

class _CustomDropDrown extends State<CustomDropDrown>{
  @override
  Widget build(BuildContext context) {
    //widget.list.insert(0, widget.defaultValue);
    var optionSelect = widget.list[0];
    print(widget.list);
    print(optionSelect);
    print(widget.defaultValue);
    return Column(
      children: <Widget>[
        Container(
            width: 100.0.w,
            height: 5.5.h,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black26)
            )
            ,
            child: Stack(
              children: <Widget>[
                Container(
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(left: 75.0.w),
                  width: 11.0.w,
                  decoration: BoxDecoration(
                      color: Colors.black12.withAlpha(15),
                      border: Border(left: BorderSide(color: Colors.black26))
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 5.0.w, right: 1.3.w),
                  child: DropdownButton<String>(
                      hint: Text(widget.defaultValue),
                      icon: Icon(Icons.arrow_drop_down_outlined,color: Colors.black12.withAlpha(60),),
                      iconSize: 24.0.sp,
                      isExpanded: true,
                      underline: SizedBox(),
                      onChanged: (String newValue) {
                        setState(() {
                          widget.defaultValue = newValue;
                        });

                      },
                      items: widget.list.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value, style: TextStyle(color: Colors.black38),),
                        );
                      }).toList()),
                )
              ],
            )
        ),

      ],
    );

  }
}