import 'package:diet_app/screens/forgetPwScreen.dart';
import 'package:diet_app/widgets/customTextInput.dart';
import 'package:flutter/material.dart';
import 'package:diet_app/const/colors.dart';
import 'package:diet_app/utils/helper.dart';
import 'package:flutter/widgets.dart';
import '../screens/signUpScreen.dart';
import '../screens/forgetPwScreen.dart';

class LoginScreen extends StatelessWidget {
  //const LoginScreen({super.key});
  static const routeName="/loginScreen";

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        height: Helper.getScreenHeigth(context),
        width: Helper.getScreenWidth(context),
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 40, 
              vertical: 30
            ) ,
            child: Column(
              children: [
                Text(
                  "Login", 
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold, 
                  ),
                ),
                Spacer(),
                //SizedBox(
                  //height: 10,
                //),
                Text("Add your details to login", style: TextStyle(fontWeight: FontWeight.bold),),
                Spacer(),

                CustomTextInput(
                  hintText: "Your email",
                ),
                Spacer(),
                CustomTextInput(
                  hintText: "Password",
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 45,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {}, 
                    child: Text("Login")
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                    .pushReplacementNamed(ForgetPwScreen.routeName);
                  },
                  child: Text(
                    "Forget your password?", style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Spacer(
                  flex: 2,
                ),
                Text("Or login with", style: TextStyle(fontWeight: FontWeight.bold),),
                Spacer(),

                SizedBox(
                  height: 45,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 247, 155, 17),
                      ),
                    ),
                    onPressed: (){}, 
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          Helper.getAssetName("facebook_logo.png"),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text("Login with Facebook"),
                      ],
                    )
                  ),
                ),
                Spacer(),
                SizedBox(
                  height: 45,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 206, 62, 51),
                      ),
                    ),
                    onPressed: (){}, 
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          Helper.getAssetName("google_logo.png"),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text("Login with Google"),
                      ],
                    )
                  ),
                ),
               Spacer(
                flex: 4,
               ),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context)
                    .pushReplacementNamed(SignUpScreen.routeName);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Dont have an Account?", style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("Sign UP", style: TextStyle(
                        color: AppColor.bleu,
                        fontWeight: FontWeight.bold,
                      ),)
                    ],
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
