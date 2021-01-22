import 'package:flutter/material.dart';
import 'package:sizer/sizer_util.dart';
import 'package:wedding_app/pages/GetStartedIntroPage.dart';
import 'package:wedding_app/pages/GetStartedPage.dart';
import 'package:wedding_app/pages/Intro2Page.dart';
import 'package:wedding_app/pages/IntroPage.dart';
import 'package:wedding_app/pages/LoginPage.dart';

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
              },
              initialRoute: initialRoute,
            );
          },
        );
      }
      );


  }
}
