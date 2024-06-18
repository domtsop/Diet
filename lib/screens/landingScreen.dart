import 'dart:ui';

import 'package:diet_app/const/colors.dart';
import 'package:diet_app/screens/loginScreen.dart';
//import 'package:clip_shadow/clip_shado.dart';
import 'package:diet_app/utils/helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class LandingScreen extends StatelessWidget{
  const LandingScreen ({super.key});

  static const routeName="/landingScreen";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        width: Helper.getScreenWidth(context),
        height: Helper.getScreenHeigth(context),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: ClipPath(
                clipper: CustomClipperAppBar(),
                child: Container(
                  width: double.infinity,
                  height: Helper.getScreenHeigth(context)*0.5,
                  decoration: ShapeDecoration(
                    color: AppColor.bleu,
                    //color: AppColor.orange, 
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      
                    ),

                  ),
                  child: Image.asset(Helper.getAssetName("icon3.png"),
                  fit: BoxFit.cover,
                  ),
                ),
               // clipper :CustomClipperAppBar(),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset(Helper.getAssetName("log2.png")),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: Helper.getScreenHeigth(context) * 0.3,
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children:[ 
                    Flexible(
                      child: Text(
                       "Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep",
                       textAlign: TextAlign.center,
                       style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
                        },
                        //navigate to login screen
                          child: Text("Login", style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),),
                      ),
                    ),
                    SizedBox(height: 20,),
                    SizedBox(
                      width: double.infinity,
                      height: 45,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.white),
                          foregroundColor: MaterialStateProperty.all(AppColor.bleu),
                          shape: MaterialStateProperty.all(StadiumBorder(
                            side: BorderSide(color: AppColor.bleu, width: 1.5),
                          )),
                        ),
                        onPressed: () {},
                          child: Text("Create and Account",
                                     style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
            
          ],
        ),
      )
    );
  }
}



 class CustomClipperAppBar extends CustomClipper<Path>{
//const CustomClipperAppBar ({super.key});
  @override
 Path getClip (Size size){
    Offset controlPoint =Offset(size.width*0.24, size.height);
    Offset endPoint = Offset(size.width*0.25, size.height*0.96);
    Offset controlPoint2 =Offset(size.width*0.3, size.height*0.78);
    Offset endPoint2 = Offset(size.width*0.5, size.height*0.78);
    Offset controlPoint3 =Offset(size.width*0.7, size.height*0.78);
    Offset endPoint3 = Offset(size.width*0.75, size.height*0.96);
    Offset controlPoint4 =Offset(size.width*0.76, size.height);
    Offset endPoint4 = Offset(size.width*0.79, size.height);
    Path path=Path()
    ..lineTo(0, size.height)
    ..lineTo(size.width*0.21, size.height)
    ..quadraticBezierTo(
      controlPoint.dx, 
      controlPoint.dy, 
      endPoint.dx, 
      endPoint.dy,
      )
      ..close()
      ..lineTo(0, size.height)
      ..lineTo(size.width*0.21, size.height)
      ..quadraticBezierTo(
      controlPoint2.dx, 
      controlPoint2.dy, 
      endPoint2.dx, 
      endPoint2.dy,
      )
      ..close()
      ..lineTo(0, size.height)
      ..lineTo(size.width*0.21, size.height)
        ..quadraticBezierTo(
      controlPoint3.dx, 
      controlPoint3.dy, 
      endPoint3.dx, 
      endPoint3.dy,
      )
      ..close()
      ..lineTo(0, size.height)
      ..lineTo(size.width*0.21, size.height)
      ..quadraticBezierTo(
      controlPoint4.dx, 
      controlPoint4.dy, 
      endPoint4.dx, 
      endPoint4.dy,
      )
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0)
      ..close();
      return path;
      
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path>oldClipper){
    return true;
  }

}


