import 'package:diet_app/screens/introScreen.dart';
import 'package:diet_app/utils/helper.dart';
import 'package:diet_app/widgets/customTextInput.dart';
import 'package:flutter/material.dart';

class NewPwScreen extends StatelessWidget {
  static const routeName="/newPw";
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        width: Helper.getScreenWidth(context),
        height: Helper.getScreenHeigth(context),
        child: SafeArea(
          child: Padding(padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text("New Password",
              textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Please enter your email to recive a link to create a new password via email",
                textAlign: TextAlign.center,
                style: TextStyle(
                  //fontSize: 25,
                  fontWeight: FontWeight.bold, 
                ),
              ),
              SizedBox(
                height: 30,
              ),
              CustomTextInput(hintText: "New Password"),
              SizedBox(
                height: 20,
              ),
              CustomTextInput(hintText: "Confirm Password"),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 45,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                    .pushReplacementNamed(IntroScreen.routeName);
                  },
                 child: Text("Next"),
                ),
              ),
            ],
          ),
          ),
        ),
      ),
    );
  }
  
}