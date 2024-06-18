import 'package:diet_app/const/colors.dart';
import 'package:diet_app/screens/homeScreen.dart';
import 'package:diet_app/screens/loginScreen.dart';
import 'package:diet_app/utils/helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:diet_app/widgets/AppBarWidget.dart';

class DrawerWidget extends StatelessWidget{
  const DrawerWidget({super.key});
  static const routeName ="/drawerWidget";

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: AppColor.bleu,
                ),
                accountName: Text(
                  "Programmer",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ), 
                accountEmail: Text(
                  "takalalips@gmail.com",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                currentAccountPicture: CircleAvatar(
                  
                  //child:Image.asset(Helper.getAssetName ("user1.png")),

                  backgroundImage: AssetImage("img/user1.png"),
                ),
              ), 
            ),
    
            // ListTile
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(HomeScreen.routeName);
              },
              child: ListTile(
                leading: Icon(
                  CupertinoIcons.home,
                  color: Colors.red,
                ),
                title: Text(
                  "Home",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            //ListTile
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(LoginScreen.routeName);
              },
              child: ListTile(
                leading: Icon(
                  CupertinoIcons.home,
                  color: Colors.red,
                ),
                title: Text(
                  "My Account",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
    
            // ListTile
            ListTile(
              leading: Icon(
                CupertinoIcons.car_fill,
                color: Colors.red,
              ),
              title: Text(
                "My Orders",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
    
            // ListTile
            ListTile(
              leading: Icon(
                CupertinoIcons.heart_fill,
                color: Colors.red,
              ),
              title: Text(
                "My Wish List",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
    
            // ListTile
            ListTile(
              leading: Icon(
                CupertinoIcons.settings,
                color: Colors.red,
              ),
              title: Text(
                "Settings",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
    
            // ListTile
            ListTile(
              leading: Icon(
                Icons.exit_to_app,
                color: Colors.red,
              ),
              title: Text(
                "Log Ourt",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}