
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import 'package:wedding_app/resources/values/AppColors.dart';
import 'package:wedding_app/widgets/MainDrawer.dart';
import 'package:wedding_app/widgets/SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight.dart';
import 'package:wedding_app/widgets/SupplierCategoriesItem.dart';

class SupplierCategoriesPage extends StatefulWidget{
  @override
  _SupplierCategoriesPage createState() => _SupplierCategoriesPage();
}

class _SupplierCategoriesPage extends State<SupplierCategoriesPage>{
  var _selectedIndex = 0;
  var imageList = ["assets/img_accesories.png","assets/img_accomodation.png","assets/img_beauty.png","assets/img_bonbonniere.png",
  "assets/img_brindesmaids.png","assets/img_bonbonniere.png","assets/img_cakes.png","assets/img_cars.png"];
  var titleList = ["Accessories","Accommodation","Beauty","Bonbonniere","Bridal Gowns","Bonbonniere","Cakes","Cars"];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    var size = MediaQuery.of(context).size;
    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2.5;
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        toolbarHeight: 10.0.h,
        actions: <Widget>[
          CircleAvatar(
            radius: 4.0.h,
            backgroundImage: AssetImage("assets/app_logo.png"),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5.5.w),
            alignment: Alignment.centerLeft,
            height: 7.5.h,
            width: 100.0.w,
            color: Colors.black26,
            child: Text("Supplier Categories",style: TextStyle(fontSize: 16.0.sp),),
          ),
          Divider(height: 2.0.h,),
          Expanded(
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
          )

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: AppColors.PRIMARY_COLOR,
        elevation: 15,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey.withOpacity(0.2),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.email),
            label: 'Imbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.all_inbox),
            label: 'Supplier\nCategories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate),
            label: 'Planner',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Yes List',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.PRIMARY_COLOR.withOpacity(0.8),
        onTap: _onItemTapped,

      ),
    );
  }

}