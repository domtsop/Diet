import 'package:diet_app/const/colors.dart';
import 'package:flutter/material.dart';
import '../utils/helper.dart';
import './newPwScreen.dart';

class SentOTPScreen extends StatelessWidget{
  static const routeName ="./sendOTP";

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
          ),
          child:Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text("we have send you an OTP to your mobile",
              textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold, 
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Pleace check your mobile number...continue to reset your passord",
              style: TextStyle (fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OTPInput(),
                  OTPInput(),
                  OTPInput(),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.of(context)
                    .pushReplacementNamed(NewPwScreen.routeName);
                  }, 
                  child: Text("Next"),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Didn't Recieve?",style: TextStyle (fontWeight: FontWeight.bold),),
                  Text("Click Here", style: TextStyle(
                    color: AppColor.bleu,
                    fontWeight: FontWeight.bold,
                  ),)
                ],
              )
            ],
          ),
        ),
      )
    );
  }
  
}

class OTPInput extends StatelessWidget {
  const OTPInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: ShapeDecoration(color: AppColor.PlaceholderBg,shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      ),
      child: Stack(
        children: [
          Padding(padding: const EdgeInsets.only(top: 18, left: 20),
          child: Text(
            "*",
            style: TextStyle(fontSize: 20),
            ),
            ),
          TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
          ),
        ],
      ),
    );
  }
}