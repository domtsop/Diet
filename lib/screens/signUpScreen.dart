import 'package:diet_app/const/colors.dart';
import 'package:diet_app/screens/loginScreen.dart';
import 'package:diet_app/utils/helper.dart';
import 'package:diet_app/widgets/customTextInput.dart';
import 'package:diet_app/widgets/profil.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  //const SignUpScreen ({super.key});
  static const routeName ='/signUpScreen.dart';

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        width: Helper.getScreenWidth(context),
        height: Helper.getScreenHeigth(context),
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 30,
            ),
            child: Column(
              children: [
                Text(
                  "Sign Up",
                   style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold, 
                  ),
                ),
                Spacer(),
                Text(
                  "Add your details to sign up,", style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                CustomTextInput(hintText: "Name"),
                Spacer(),
                CustomTextInput(hintText: "Forename"),
                Spacer(),
                CustomTextInput(hintText: "Email"),
                Spacer(),
                CustomTextInput(hintText: "Adresse"),
                
                Spacer(),
                Profil(),
                //CustomTextInput(hintText: "Profil"),
                Spacer(),
                CustomTextInput(hintText: "Password"),
                Spacer(),
                CustomTextInput(hintText: "Confirm Password"),
                Spacer(),
                
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      
                    },
                    child: Text("Sign Up"),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                    .pushReplacementNamed(LoginScreen.routeName);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an Account?", style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("Login",
                      style: TextStyle(
                        color: AppColor.bleu,
                        fontWeight: FontWeight.bold,
                      ),),
                    ],
                  ),
                )
              ],
            ),
          )
        ),
      )
    );
  }
  
}
