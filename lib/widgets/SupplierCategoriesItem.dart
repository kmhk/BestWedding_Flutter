
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SupplierCategoriesItem extends StatefulWidget{
  @override
  _SupplierCategoriesItem createState() => _SupplierCategoriesItem();
}


class _SupplierCategoriesItem extends State<SupplierCategoriesItem>{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2.5.w),
      child: Card(
        elevation: 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 7,
              child: Container(
                color: Colors.orange,
                child: Text("test1"),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                alignment: Alignment.center,
                color: Colors.blueAccent,
                child: Text("asdddd"),
              ),
            )
          ],
        ),

      ),
    );
  }

}