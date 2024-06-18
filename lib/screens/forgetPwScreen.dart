import 'package:diet_app/utils/helper.dart';
import 'package:diet_app/widgets/customTextInput.dart';
import 'package:flutter/material.dart';
import './sentOTPScreen.dart';

class ForgetPwScreen extends StatelessWidget {
  static const routeName="/restpwScreen";
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
                  "Reset Passeword",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold, 
                  ),
                ),
                //Spacer(),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Please enter your email to recieve a link to create a new password via email",
                  textAlign: TextAlign.center,
                ),
                //Spacer(),
                SizedBox(
                  height: 20,
                ),

                CustomTextInput(hintText: "Email"),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.of(context)
                      .pushReplacementNamed(SentOTPScreen.routeName);
                    }, 
                    child: Text("Send"),
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
  
}