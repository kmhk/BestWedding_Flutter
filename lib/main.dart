import 'package:flutter/material.dart';
import 'package:wedding_app/pages/Intro2Page.dart';
import 'package:wedding_app/pages/IntroPage.dart';

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
    return MaterialApp(
      title: "Wedding App",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/intro' : (context) => IntroPage(),
        '/intro2' : (context) => Intro2Page()
      },
      initialRoute: initialRoute,
    );
  }
}
