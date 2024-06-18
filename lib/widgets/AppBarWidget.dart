import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:diet_app/widgets/DrawerWidget.dart';
//import 'package:diet_app/screens/homeScreen.dart';
//import 'package:diet_app/screens/menuScreen.dart';

class AppBarWidget extends StatelessWidget{
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context){
    return Padding(padding: EdgeInsets.symmetric(
      vertical: 10, 
      horizontal: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget> [
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(DrawerWidget.routeName);
                //Scaffold.of(context).openDrawer(); 
              },
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    )
                  ] 
                ),
                child: Icon(CupertinoIcons.bars),
              ),
            ),

                InkWell(
              onTap: () {
                
              },
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    )
                  ] 
                ),
                child: Icon(Icons.notifications),
              ),
            ),
        ]),
    );
  }
}