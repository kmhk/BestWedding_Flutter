
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import 'package:wedding_app/pages/MyProfilePage.dart';
import 'package:wedding_app/pages/MyProfileUserPage.dart';
import 'package:wedding_app/pages/home/ImboxPage.dart';
import 'package:wedding_app/pages/home/ProfilePage.dart';
import 'package:wedding_app/pages/home/SupplierCategoriesPage.dart';
import 'package:wedding_app/resources/values/AppColors.dart';
import 'package:wedding_app/widgets/MainDrawer.dart';
import 'package:wedding_app/widgets/SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight.dart';
import 'package:wedding_app/widgets/SupplierCategoriesItem.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage>{
  var _selectedIndex = 2;

  var titleList = ["Profile","Imbox","Supplier Categories"];

  List<Widget> _widgetOptions = <Widget>[
    ProfilePage(),
    ImboxPage(),
    SupplierCategoriesPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);

    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        toolbarHeight: 10.0.h,
        backgroundColor: AppColors.PRIMARY_COLOR,
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
            child: Text(titleList[_selectedIndex],style: TextStyle(fontSize: 16.0.sp),),
          ),
          Divider(height: 2.0.h,),
          _widgetOptions[_selectedIndex]

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
            label: 'Categories'
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