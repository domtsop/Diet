import 'package:diet_app/const/colors.dart';
import 'package:diet_app/screens/homeScreen.dart';
import 'package:diet_app/screens/menuScreen.dart';
import 'package:diet_app/screens/moreScreen.dart';
import 'package:diet_app/screens/offerScreen.dart';
import 'package:diet_app/screens/profileScreen.dart';
import 'package:diet_app/utils/helper.dart';
import 'package:flutter/material.dart';

class CustomNavBar extends StatefulWidget {
 final bool home;
  bool menu;
 final bool offer;
 final bool Profile;
 final bool more;

  CustomNavBar({
    key,
    this.home=false, 
    this.menu=false, 
    this.offer=false, 
    this.Profile=false, 
    this.more=false
  }):super(key: key) ;
  @override
  _CustomNavBarState createState()=> _CustomNavBarState();

  
}

class _CustomNavBarState extends State<CustomNavBar>{
  bool get menu => false;
  bool get offer => false;
  bool get profile => false;
  bool get more => false;
  bool get home => false;

  @override
  Widget build(BuildContext context){
    return SizedBox(
      height: 100,
      width: Helper.getScreenWidth(context),
     // padding: const EdgeInsets.circular(20),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
               decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: AppColor.placeholder,
                      offset: Offset(0, 40),
                      blurRadius: 50,
                    ),
                  ],
                  ),
              child: ClipPath( 
                clipper: CustomNavBarClipper(),
                child: Container(
                  height: 45,
                  width: Helper.getScreenWidth(context),
                  color: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal:20),
                  child: Row( 
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector( onTap: () {
                        if (!menu) {
                          Navigator.of(context).pushReplacementNamed(MenuScreen.routeName);
                        }
                      },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            menu?Image.asset(
                              Helper.getAssetName("tab_menu.png"),height: 20,
                            ):Image.asset(
                              Helper.getAssetName("tab_menu.png"),height: 20,
                            ),
                            menu?Text("Menu", style:TextStyle(color: AppColor.bleu)):Text("Menu"),
                          ],
                        ),
                      ),
                      GestureDetector( onTap: () {
                        if (!offer) {
                          Navigator.of(context).pushReplacementNamed(OfferScreen.routeName);
                        }
                      },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            offer?Image.asset(
                              Helper.getAssetName("tab_offer.png"),height: 20,
                            ):Image.asset(
                              Helper.getAssetName("tab_offer.png"),height: 20,
                            ),
                            offer?Text("Offers", style:TextStyle(color: AppColor.bleu)):Text("Offers"),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      GestureDetector(onTap: () {
                        if (!profile) {
                          Navigator.of(context).pushReplacementNamed(ProfileScreen.routeName);
                        }
                      },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                           profile?Image.asset(
                              Helper.getAssetName("tab_profile.png"),height: 20,
                            ):Image.asset(
                              Helper.getAssetName("tab_profile.png"),height: 20,
                            ),
                            profile?Text("Profil", style:TextStyle(color: AppColor.bleu)):Text("Profile"),
                          ],
                        ),
                      ),
                      GestureDetector(onTap: () {
                        if (!more) {
                          Navigator.of(context).pushReplacementNamed(MoreScreen.routeName);
                        }
                      },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                           more?Image.asset(
                              Helper.getAssetName("tab_more.png"),height: 20,
                            ):Image.asset(
                              Helper.getAssetName("tab_more.png"),height: 20,
                            ),
                            more?Text("More", style:TextStyle(color: AppColor.bleu)):Text("More"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          //SizedBox(height: 10,),
          Positioned(
            bottom: 0,
            left: 0,
            child: Align(alignment: Alignment.topCenter), 
          ),
          Align(
            //alignment: Alignment.topCenter,
            
            child: SizedBox(
              height: 50,
              width: 50,
              child: FloatingActionButton(
                elevation: 0,
                backgroundColor: home? AppColor.bleu:AppColor.placeholder,
                onPressed: (){
                  if (!home) {
                        Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
                      }
                },
                child: home?Image.asset(
                  Helper.getAssetName("tab_home.png"),height: 25,
                ):Image.asset(
                  Helper.getAssetName("tab_home.png"),height: 25,
                ),
              ),
            ),
          ),
          
        ],
      ),
    );
  }
  
}

class CustomNavBarClipper extends CustomClipper<Path>{
  @override
Path getClip(Size size) {
  
 Offset controlPoint =Offset(size.width*0.375, 0);
    Offset endPoint = Offset(size.width*0.375, size.height*0.1);
    Offset controlPoint2 =Offset(size.width*0.4, size.height*1.1);
    Offset endPoint2 = Offset(size.width*0.6, size.height*1.1);
    Offset controlPoint3 =Offset(size.width*0.60, 0);
    Offset endPoint3 = Offset(size.width*0.7, size.height*0.9);
    Offset controlPoint4 =Offset(size.width*0.7, size.height*0.9);
    //Offset endPoint4 = Offset(size.width*0.79, size.height);
    Path path=Path()
    ..moveTo(0, 0)
    //..lineTo(0, size.height)
    ..lineTo(size.width*0.3, 0)
    ..quadraticBezierTo(
      controlPoint.dx, 
      controlPoint.dy, 
      endPoint.dx, 
      endPoint.dy,
      )
      ..close()
      //..lineTo(0, size.height)
      ..lineTo(size.width*0.40, 0)
      ..cubicTo(
        controlPoint2.dx,
        controlPoint2.dy,
        endPoint2.dx,
        endPoint2.dy,
      controlPoint3.dx, 
      controlPoint3.dy, 
      )
      ..close()
      //..lineTo(0, size.height)
     // ..lineTo(size.width*0.3, 0)
      ..quadraticBezierTo(
      controlPoint4.dx, 
      controlPoint4.dy, 
      endPoint3.dx, 
      endPoint3.dy,
      )
      ..close()
  ..lineTo(size.width, 0)
  ..lineTo(size.width, size.height)
  ..lineTo(0, size.height)
  ..lineTo(0, 0)
      ..close();
      return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
   return true;
  }
  
}