import 'package:flutter/material.dart';

class SDP{
  static int dimen;
  static double width;
  static BuildContext context;

  static void init(BuildContext c){
    context = c;
    width = MediaQuery.of(context).size.width;
  }

  static double sdp(double dp) {
    return (dp / 300) * width;
  }
  
  static double sdpPercentWidthScreen(double percent){
    double width = MediaQuery.of(context).size.width;
    return percent*sdp(width);
  }

  static double sdpPercentHeightScreen(double percent){
    double height = MediaQuery.of(context).size.height;
    return percent*sdp(height);
  }
}