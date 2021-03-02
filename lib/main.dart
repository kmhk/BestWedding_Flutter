import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer_util.dart';
import 'package:wedding_app/pages/AddYourCriteriaPage.dart';
import 'package:wedding_app/pages/EditListingPage.dart';
import 'package:wedding_app/pages/EditLitingUploadImagePage.dart';
import 'package:wedding_app/pages/ListMyDressListingPage.dart';
import 'package:wedding_app/pages/MyProfilePage.dart';
import 'package:wedding_app/pages/MyProfileUserPage.dart';
import 'package:wedding_app/pages/NewListingPage.dart';
import 'package:wedding_app/pages/NewListingUploadImagePage.dart';
import 'package:wedding_app/pages/PreviewListingEditPage.dart';
import 'package:wedding_app/pages/PreviewListingPage.dart';
import 'package:wedding_app/pages/SpecificListingDetailsPage.dart';
import 'package:wedding_app/pages/SubscriberCalendar.dart';
import 'package:wedding_app/pages/SubscriberCalendar2Page.dart';
import 'package:wedding_app/pages/SubscriberCalendar3Page.dart';
import 'package:wedding_app/pages/SubscriberCalendar4Page.dart';
import 'package:wedding_app/pages/SubscriberCalendar5Page.dart';
import 'package:wedding_app/pages/SwipeSectionPage.dart';
import 'package:wedding_app/pages/getstarted/GetStartedIntroPage.dart';
import 'package:wedding_app/pages/getstarted/GetStartedPage.dart';
import 'package:wedding_app/pages/home/HomePage.dart';
import 'package:wedding_app/pages/intro/Intro2Page.dart';
import 'package:wedding_app/pages/intro/IntroPage.dart';
import 'package:wedding_app/pages/LoginPage.dart';

import 'pages/getstarted/GetStartedStepsPage.dart';

String initialRoute = '/intro';
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
                '/supplierCategories' : (context) => HomePage(),
                '/newListing': (context) => NewListingPage(),
                '/listDressListing' : (context) => ListMyDressListingPage(),
                '/addYourCriteria': (context) => AddYourCriteriaPage(),
                '/newListingUploadImage': (context) => NewListingUploadImagePage(),
                '/previewListingPage' : (context) => PreviewListingPage(),
                '/editListing' : (context) => EditListingPage(),
                '/specificListingDetails':(context) => SpecificListingDetailsPage(),
                '/editListingUploadImage':(context) => EditListingUploadImagePage(),
                '/previewListingEditPage':(context) => PreviewListingEditPage(),
                '/myProfile':(context) => MyProfilePage(),
                '/myProfileUser':(context) => MyProfileUserPage(),
                '/subscriberCalendar':(context)=> SubscriberCalendar(),
                '/subscriberCalendar2':(context)=> SubscriberCalendar2Page(),
                '/subscriberCalendar3':(context)=> SubscriberCalendar3Page(),
                '/subscriberCalendar4':(context)=> SubscriberCalendar4Page(),
                '/subscriberCalendar5':(context)=> SubscriberCalendar5Page(),
                '/SwipeSectionPage':(context)=> SwipeSectionPage(),
              },
              initialRoute: initialRoute,
            );
          },
        );
      }
      );


  }
}
