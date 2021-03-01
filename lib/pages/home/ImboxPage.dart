
import 'package:flutter/cupertino.dart';
import 'package:wedding_app/widgets/ImboxItem.dart';
import 'package:wedding_app/widgets/SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight.dart';
import 'package:wedding_app/widgets/SupplierCategoriesItem.dart';
import 'package:sizer/sizer.dart';

class ImboxPage extends StatefulWidget{
  @override
  _ImboxPage createState() => _ImboxPage();
}

class _ImboxPage extends State<ImboxPage>{
  var nameList = ["ABC Cocktails","Vision Photography","John Celebrant"];
  var messageList = ["2 hrs ago","3 hrs ago","5 hrs ago"];
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GridView.builder(
            shrinkWrap: true,
            itemCount: nameList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
              crossAxisCount: 1,
              height: 10.0.h,
            ),
            itemBuilder: (BuildContext context, index){
              return ImboxItem(name: nameList[index],message: messageList[index],);
            })
    );
  }

}