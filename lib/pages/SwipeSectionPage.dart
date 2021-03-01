
import 'package:flutter_tindercard/flutter_tindercard.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:wedding_app/resources/values/AppColors.dart';
import 'package:wedding_app/themes/app_theme.dart';
import 'package:wedding_app/widgets/MainDrawer.dart';

class SwipeSectionPage extends StatefulWidget{
  @override
  _SwipeSectionPage createState() => _SwipeSectionPage();
}

class _SwipeSectionPage extends State<SwipeSectionPage>{
  List<String> welcomeImages = [
    "assets/imageTest.png",
    "assets/introimage.png",
    "assets/imageTest.png",
    "assets/introimage.png",
    "assets/imageTest.png",
    "assets/introimage.png"
  ];


  @override
  Widget build(BuildContext context) {
    CardController controller; //Use this to trigger swap.

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
      body: Center(
        child: Stack(
          children: [
            Container(
              color: Colors.black,
              height: MediaQuery.of(context).size.height * 0.4,
              child: new TinderSwapCard(

                swipeUp: true,
                swipeDown: true,
                orientation: AmassOrientation.BOTTOM,
                totalNum: welcomeImages.length,
                stackNum: 2,
                swipeEdge: 3.0,
                maxWidth: MediaQuery.of(context).size.width * 0.9,
                maxHeight: MediaQuery.of(context).size.width * 0.9,
                minWidth: MediaQuery.of(context).size.width * 0.8,
                minHeight: MediaQuery.of(context).size.width * 0.8,
                cardBuilder: (context, index) => Card(
                  child:Image.asset('${welcomeImages[index]}', fit: BoxFit.fill,),
                ),
                cardController: controller = CardController(),
                swipeUpdateCallback:
                    (DragUpdateDetails details, Alignment align) {
                  /// Get swiping card's alignment
                  if (align.x < 0) {
                    //Card is LEFT swiping
                  } else if (align.x > 0) {
                    //Card is RIGHT swiping
                  }
                },
                swipeCompleteCallback:
                    (CardSwipeOrientation orientation, int index) {
                  /// Get orientation & index of swiped card!
                },
              ),
            ),
            Container(

            )
          ],
        )

      ),
    );
  }
}