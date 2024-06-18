import 'package:diet_app/screens/dessertScreen.dart';
import 'package:diet_app/screens/individualItem.dart';
import 'package:diet_app/screens/menuScreen.dart';
import 'package:diet_app/screens/moreScreen.dart';
import 'package:diet_app/screens/offerScreen.dart';
import 'package:diet_app/screens/profileScreen.dart';
import 'package:diet_app/widgets/DrawerWidget.dart';
import 'package:flutter/material.dart';


import './screens/SplashScreen.dart';
import './screens/landingScreen.dart';
import './screens/loginScreen.dart';
import './screens/signUpScreen.dart';
import './screens/forgetPwScreen.dart';
import './screens/sentOTPScreen.dart';
import './screens/newPwScreen.dart';
import './screens/introScreen.dart';
import './screens/homeScreen.dart';
import './const/colors.dart';

//import 'package:diet_app/screens/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: "Flutter Demo",
      theme: ThemeData(
        fontFamily: "Metropolis",
        primarySwatch: Colors.red,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(
          AppColor.bleu,
          ),
          shape: MaterialStateProperty.all(
            StadiumBorder(),
          ),
          elevation: MaterialStateProperty.all(0),
          ),
        ),
        textButtonTheme: TextButtonThemeData(style: ButtonStyle(foregroundColor: MaterialStateProperty.all(AppColor.bleu))),
        textTheme: TextTheme(
          headline3: TextStyle(
            color: AppColor.primary,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          headline4: TextStyle(
            color: AppColor.secondary,
            fontWeight: FontWeight.bold,
            fontSize: 19,
          ),
          headline5: TextStyle(color: AppColor.primary,
            fontWeight: FontWeight.normal,
            fontSize: 25,
          ),
          bodyText2: TextStyle(
            color:AppColor.secondary,
           // fontWeight: FontWeight.bold,
          ),
        ),
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        //useMaterial3: true,
      ),
      home: const SplashScreen(),
      routes: {
        LandingScreen.routeName: (context)=> LandingScreen(),
        LoginScreen.routeName: (context)=> LoginScreen(),
        SignUpScreen.routeName:(context) => SignUpScreen(),
        ForgetPwScreen.routeName:(context) => ForgetPwScreen(),
        SentOTPScreen.routeName:(context) => SentOTPScreen(),
        NewPwScreen.routeName:(context) => NewPwScreen(),
        IntroScreen.routeName:(context) => IntroScreen(),
        HomeScreen.routeName:(context) => HomeScreen(),
        MoreScreen.routeName:(context) => MoreScreen(),
        ProfileScreen.routeName:(context) => ProfileScreen(),
        MenuScreen.routeName:(context) => MenuScreen(),
        OfferScreen.routeName:(context) => OfferScreen(),
        DessertScreen.routeName:(context) => DessertScreen(),
        IndividualItem.routeName:(context) => IndividualItem(),
        DrawerWidget.routeName:(context) => DrawerWidget(),
      },
    );
  }
}
