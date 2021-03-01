
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:wedding_app/services/HelpersService.dart';

class SupplierCategoriesItem extends StatefulWidget{
  String image;
  String title;

  SupplierCategoriesItem({@required this.image,@required this.title});

  @override
  _SupplierCategoriesItem createState() => _SupplierCategoriesItem();
}


class _SupplierCategoriesItem extends State<SupplierCategoriesItem>{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2.5.w),
      child: GestureDetector(
        onTap: () => {
        HelpersService.push(context, '/SwipeSectionPage')
        },
        child: Card(
        elevation: 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 7,
              child: Container(

                child: Image.asset(widget.image),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                alignment: Alignment.center,
                color: Colors.black12,
                child: Text(widget.title,style: TextStyle(fontSize: 13.0.sp),),
              ),
            )
          ],
        ),

      ),
      ),
    );
  }

}