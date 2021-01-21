
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rate_my_app/rate_my_app.dart';

class RateApp{

  static RateMyApp rateMyApp = RateMyApp(
    preferencesPrefix: 'Enjoying The Best Wedding App?',
    minDays: 0, // Show rate popup on first day of install.
    minLaunches: 5,
    appStoreIdentifier: "1491556149",
    googlePlayIdentifier: "com.weddingApp.app",// Show rate popup after 5 launches of app after minDays is passed.
  );

  static showRateApp(BuildContext context){
    rateMyApp.showStarRateDialog(
      context,
      title: 'Enjoying The Best Wedding App?', // The dialog title.
      message: 'Tap a star to rate it on the App Store', // The dialog message.
      // contentBuilder: (context, defaultContent) => content, // This one allows you to change the default dialog content.
      actionsBuilder: (context, stars) { // Triggered when the user updates the star rating.
        return [ // Return a list of actions (that will be shown at the bottom of the dialog).
          FlatButton(
            child: Text('OK'),
            onPressed: () async {
              print('Thanks for the ' + (stars == null ? '0' : stars.round().toString()) + ' star(s) !');
              // You can handle the result as you want (for instance if the user puts 1 star then open your contact page, if he puts more then open the store page, etc...).
              // This allows to mimic the behavior of the default "Rate" button. See "Advanced > Broadcasting events" for more information :
              Navigator.pop<RateMyAppDialogButton>(context, RateMyAppDialogButton.rate);
              rateMyApp.launchStore();
              await rateMyApp.callEvent(RateMyAppEventType.rateButtonPressed);
            },
          ),
        ];
      },
      ignoreNativeDialog: Platform.isAndroid, // Set to false if you want to show the Apple's native app rating dialog on iOS or Google's native app rating dialog (depends on the current Platform).
      dialogStyle: DialogStyle( // Custom dialog styles.
        titleAlign: TextAlign.center,
        messageAlign: TextAlign.center,
        messagePadding: EdgeInsets.only(bottom: 20),
      ),
      starRatingOptions: StarRatingOptions(), // Custom star bar rating options.
      onDismissed: () => rateMyApp.callEvent(RateMyAppEventType.laterButtonPressed), // Called when the user dismissed the dialog (either by taping outside or by pressing the "back" button).
    );

  }

}