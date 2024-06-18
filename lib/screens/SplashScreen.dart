import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
import './landingScreen.dart';
import '../utils/helper.dart';
//import 'package:flutter/widgets.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen ({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  late Timer _timer;

  @override
  void initState() {
    _timer= new Timer(Duration(microseconds: 4000), () {
      Navigator.of(context).pushReplacementNamed(LandingScreen.routeName);
    });
    super.initState();
  }

//@override
//void dispose(){

 // super.dispose();
//}

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        width: Helper.getScreenWidth(context),
        height: Helper.getScreenHeigth(context),
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
              Helper.getAssetName("splash_bg.png"),
              fit: BoxFit.fill,
              ),
            ),
            Align(
              alignment: Alignment.center, 
              child: Image.asset(
                Helper.getAssetName("log2.png"),
                ),
            )
          ],
        ),
      ),
    );
  }
}