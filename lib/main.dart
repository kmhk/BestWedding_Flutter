import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer_util.dart';
import 'package:wedding_app/pages/NewListingPage.dart';
import 'package:wedding_app/pages/getstarted/GetStartedIntroPage.dart';
import 'package:wedding_app/pages/getstarted/GetStartedPage.dart';
import 'package:wedding_app/pages/intro/Intro2Page.dart';
import 'package:wedding_app/pages/intro/IntroPage.dart';
import 'package:wedding_app/pages/LoginPage.dart';
import 'package:wedding_app/pages/SupplierCategoriesPage.dart';

import 'pages/getstarted/GetStartedStepsPage.dart';

String initialRoute = '/newListing';
void main() {

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState()  => new _MyAppState();
}



class _MyAppState extends State<MyApp> {

  @override

  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizerUtil().init(constraints, orientation);
            return MaterialApp(
              title: "Wedding App",
              theme: ThemeData(
                primarySwatch: Colors.blue,
                visualDensity: VisualDensity.adaptivePlatformDensity,
              ),
              routes: {
                '/intro' : (context) => IntroPage(),
                '/intro2' : (context) => Intro2Page(),
                '/getStartedIntro' : (context) => GetStartedIntropage(),
                '/getStarted' : (context) => GetStartedPage(),
                '/login' : (context) => LoginPage(),
                '/getStartedSteps' : (context) => GetStartedStepsPage(),
                '/supplierCategories' : (context) => SupplierCategoriesPage(),
                '/newListing': (context) => NewListingPage(),
              },
              initialRoute: initialRoute,
            );
          },
        );
      }
      );


  }
}
