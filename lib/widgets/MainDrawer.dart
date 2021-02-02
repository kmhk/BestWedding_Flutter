
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:wedding_app/widgets/DrawerItem.dart';

class MainDrawer extends StatefulWidget{
  @override
  _MainDrawer createState() => _MainDrawer();
}

class _MainDrawer extends State<MainDrawer>{
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.black12,
        padding: EdgeInsets.only(top: 4.8.h,left: 5.0.w,right: 5.0.w),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Flexible(
                  flex: 13,
                  child: GestureDetector(
                    onTap: () => {

                    },
                    child: CircleAvatar(
                      radius: 25.0.sp,
                      backgroundImage: AssetImage("assets/app_logo.png"),
                    ),
                  )
                ),
                Flexible(
                  flex: 2,
                  child: GestureDetector(
                    onTap: () => {
                        Navigator.pop(context)
                    },
                    child: Icon(Icons.close),
                  ),
                )
              ],
            ),
            Divider(
              color: Colors.transparent,
              height: 1.5.h,
            ),
            Divider(color: Colors.white),
            DrawerItem(
                title: "My Profile",
                onSelectItem: () => {

                }),
            Divider(color: Colors.white),
            DrawerItem(
                title: "My Wedding details",
                onSelectItem: () => {
                  //click
            }),
            Divider(color: Colors.white),
            DrawerItem(
                title: "Imbox",
                onSelectItem: () => {
                  //click
                }),
            Divider(color: Colors.white),
            DrawerItem(
                title: "Supplier Categories",
                onSelectItem: () => {
                  //click
                }),
            Divider(color: Colors.white),
            DrawerItem(
                title: "Saved Suppliers",
                onSelectItem: () => {
                  //click
                }),
            Divider(color: Colors.white),
            DrawerItem(
                title: "Rejected List",
                onSelectItem: () => {
                  //click
                }),
            Divider(color: Colors.white),
            DrawerItem(
                title: "Sell Pre Loved Item",
                onSelectItem: () => {
                  //click
                }),
            Divider(color: Colors.white),
            DrawerItem(
                title: "Log Out",
                onSelectItem: () => {
                  //click
                }),
            Divider(color: Colors.white),
        Container(
          height: 6.5.h,
          child: GestureDetector(
            onTap: () => {

            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 13,
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.settings),
                          Container(
                            padding: EdgeInsets.only(left: 2.0.w),
                              child: Text("Settings",style: TextStyle(fontSize: 14.0.sp),))
                        ],
                      ),
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
        )
          ],
        ),
      )
    );
  }

}