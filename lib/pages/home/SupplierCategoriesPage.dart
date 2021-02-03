
import 'package:flutter/cupertino.dart';
import 'package:wedding_app/widgets/SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight.dart';
import 'package:wedding_app/widgets/SupplierCategoriesItem.dart';
import 'package:sizer/sizer.dart';

class SupplierCategoriesPage extends StatefulWidget{
  @override
  _SupplierCategoriesPage createState() => _SupplierCategoriesPage();
}

class _SupplierCategoriesPage extends State<SupplierCategoriesPage>{

  var imageList = ["assets/img_accesories.png","assets/img_accomodation.png","assets/img_beauty.png","assets/img_bonbonniere.png",
    "assets/img_brindesmaids.png","assets/img_bonbonniere.png","assets/img_cakes.png","assets/img_cars.png"];
  var titleList = ["Accessories","Accommodation","Beauty","Bonbonniere","Bridal Gowns","Bonbonniere","Cakes","Cars"];
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GridView.builder(
            shrinkWrap: true,
            itemCount: titleList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
              crossAxisCount: 2,
              crossAxisSpacing: 1.0.w,
              mainAxisSpacing: 2.5.w,
              height: 28.0.h,
            ),
            itemBuilder: (BuildContext context, index){
              return SupplierCategoriesItem(image: imageList[index], title: titleList[index]);
            })
    );
  }

}