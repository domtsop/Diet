import 'package:flutter/material.dart';

class Helper{
  static double getScreenWidth(BuildContext context){
    return MediaQuery.of(context).size.width;
  }
  static double getScreenHeigth(BuildContext context){
    return MediaQuery.of(context).size.height;
  } 
  static String getAssetName(String filName){
    return "assets/img/$filName";
  }
  static TextTheme getTheme(BuildContext context){
    return Theme.of(context).textTheme;
  }
}