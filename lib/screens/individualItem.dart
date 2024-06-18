import 'package:diet_app/const/colors.dart';
import 'package:diet_app/utils/helper.dart';
import 'package:diet_app/widgets/customNavBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IndividualItem extends StatelessWidget {
  static const routeName="/individualScreen";
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
              child: Container(
                height: Helper.getScreenHeigth(context),
                width: Helper.getScreenWidth(context),
                child: Column(
                  children: [
                    Stack(
                      children:[ 
                        Stack(
                          children:[ SizedBox(
                            height: Helper.getScreenHeigth(context)*0.3,
                            width: Helper.getScreenWidth(context),
                            child: Image.asset(
                              Helper.getAssetName("rep.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            height: Helper.getScreenHeigth(context)*0.5,
                            width: Helper.getScreenWidth(context),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                stops: [0.0,0.4],
                                colors: [
                                Colors.black.withOpacity(0.9),
                                Colors.black.withOpacity(0.0),
                                ],
                              ),
                           ),
                          ),
                         ],
                        ), 
                        SafeArea(
                            child: Column(
                              children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal:20.0),
                              child:
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Icon(
                                        Icons.arrow_back_ios_rounded,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Image.asset(
                                      Helper.getAssetName("shopping_cart.png"), 
                                      height: 20,
                                    ),
                                  ],
                                ),
                                ),
                                SizedBox(
                                  height: Helper.getScreenHeigth(context)*0.15,
                                ),
                                SizedBox(
                                  height: 530,
                                  width: double.infinity,
                                  child: Stack(
                                    children:[ 
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                        height: 530,
                                        width: double.infinity,
                                        padding: const EdgeInsets.symmetric(
                                          //horizontal: 20,
                                          vertical: 30,
                                        ),
                                        decoration: ShapeDecoration(
                                          color: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(40),
                                              topRight: Radius.circular(40),
                                            ),
                                          ),
                                        ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Resturnt Chiken",
                                              style: Helper.getTheme(context).headline5,
                                            ),
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Image.asset(
                                                          Helper.getAssetName("rate.png"),
                                                          height: 15,
                                                        ),
                                                        SizedBox(
                                                          width: 4,
                                                        ),
                                                        Image.asset(
                                                          Helper.getAssetName("rate.png"),
                                                          height: 15,
                                                        ),
                                                        SizedBox(
                                                          width: 4,
                                                        ),
                                                        Image.asset(
                                                          Helper.getAssetName("rate.png"),
                                                          height: 15,
                                                        ),
                                                        SizedBox(
                                                          width: 4,
                                                        ),
                                                        Image.asset(
                                                          Helper.getAssetName("rate.png"),
                                                          height: 15,
                                                        ),
                                                        SizedBox(
                                                          width: 4,
                                                        ),
                                                        Image.asset(
                                                          Helper.getAssetName("rate.png"),
                                                          height: 15,
                                                        ),
                                                        SizedBox(
                                                          width: 4,
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 5,
                                                    ),
                                                    Text(
                                                      "4 Star Rating",
                                                      style: TextStyle(color: AppColor.bleu),
                                                    ),
                                                  ],
                                                ),
                                                Expanded(
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.end,
                                                    children: [
                                                      SizedBox(
                                                        height: 20,
                                                      ),
                                                      Text(
                                                        "Rs. 750",
                                                        style: TextStyle(
                                                          color: AppColor.primary,
                                                          fontSize: 30,
                                                          fontWeight: FontWeight.w700,
                                                        ),
                                                      ),
                                                      Text("/Per quality"),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              "Description",
                                              style: Helper.getTheme(context).headline4?.copyWith(
                                                fontSize: 16,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "Lorem ipsum.................. "
                                            ),
                                            SizedBox( height: 10,),
                                            Divider(
                                              color: AppColor.placeholder,
                                              thickness:1.5 ,
                                            ),
                                            SizedBox(height: 10,),
                                            Text(
                                              "Customize your Order",
                                              style: Helper.getTheme(context).headline4?.copyWith(
                                                fontSize: 16,
                                              ),
                                            ),
                                            SizedBox(height: 10,),
                                            Container(
                                              height: 40,
                                              width: double.infinity,
                                              padding: const EdgeInsets.only(left: 30, right: 10),
                                              decoration: ShapeDecoration(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(5), 
                                                ),
                                                color: AppColor.PlaceholderBg,
                                              ),
                                              child: DropdownButtonHideUnderline(
                                                child: 
                                                DropdownButton(
                                                  hint: Row(
                                                    children: [
                                                      SizedBox(width: 10,),
                                                      Text("-select the ingredients-"),
                                                    ],
                                                  ),
                                                  value: "default", 
                                                  onChanged: (String? value) {  },
                                                  items:[ 
                                                    DropdownMenuItem(
                                                      child: Text(
                                                        "-select the ingredients-"
                                                      ),
                                                      value: "default",
                                                    ),
                                                  ], 
                                                  icon: Image.asset(
                                                    Helper.getAssetName("dropdown.png"),
                                                    height: 10,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            Container(
                                              height: 40,
                                              width: double.infinity,
                                              padding: const EdgeInsets.only(left: 30, right: 10),
                                              decoration: ShapeDecoration(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(5), 
                                                ),
                                                color: AppColor.PlaceholderBg,
                                              ),
                                              child: DropdownButtonHideUnderline(
                                                child: 
                                                DropdownButton(
                                                  hint: Row(
                                                    children: [
                                                      SizedBox(width: 10,),
                                                      Text("-select the size of quality-"),
                                                    ],
                                                  ),
                                                  value: "default", 
                                                  onChanged: (String? value) {  },
                                                  items:[ 
                                                    DropdownMenuItem(
                                                      child: Text(
                                                        "-select the size of quality-"
                                                      ),
                                                      value: "default",
                                                    ),
                                                  ], 
                                                  icon: Image.asset(
                                                    Helper.getAssetName("dropdown.png"),
                                                    height: 10,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox( height: 15,),
                                            Row(
                                              
                                              children: [
                                                Text(
                                                  "Number of quality",
                                                  style: Helper.getTheme(context)
                                                  .headline4?.copyWith(
                                                    fontSize: 16,
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                    children: [
                                                      ElevatedButton(
                                                        style: ButtonStyle(
                                                          elevation: MaterialStateProperty.all(5.0),
                                                        ),
                                                        onPressed: (){}, 
                                                        child: Text("-"),
                                                      ),
                                                      SizedBox(width: 10,),
                                                      Container(
                                                        height: 30,
                                                        width: 50,
                                                        decoration: 
                                                        ShapeDecoration(
                                                          shape: StadiumBorder(
                                                            side: BorderSide(
                                                              color: AppColor.bleu,
                                                            ),
                                                          ),
                                                        ),
                                                        child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          children: [
                                                            Text(
                                                              "2",
                                                              style: TextStyle(
                                                                color: AppColor.bleu
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(width: 10,),
                                                      ElevatedButton(
                                                        style: ButtonStyle(
                                                          elevation: MaterialStateProperty.all(5.0),
                                                        ),
                                                        onPressed: (){}, 
                                                        child: Text("+"),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 5,),
                                      
                                             SizedBox(  
                                                height: 120,
                                                width: double.infinity,
                                                child: Stack(
                                                  children: [
                                                    Container(
                                                      width: 150,
                                                      decoration: ShapeDecoration(
                                                        color: AppColor.bleu,
                                                        shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.only(
                                                            topRight: Radius.circular(40),
                                                            bottomRight: Radius.circular(40),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                     Align(
                                                      alignment: Alignment.centerRight,
                                                      child: Padding(
                                                        padding: const EdgeInsets.symmetric(horizontal: 20),
                                                        child: Container(
                                                          height: 85,
                                                          width: double.infinity,
                                                          margin: const EdgeInsets.only(
                                                            left: 50,
                                                            right: 40,
                                                          ),
                                                          decoration: ShapeDecoration(
                                                            shape: RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.only(
                                                                topLeft: Radius.circular(20),
                                                                bottomLeft: Radius.circular(20),
                                                                topRight: Radius.circular(10),
                                                                bottomRight: Radius.circular(10),
                                                              )
                                                            ),
                                                            shadows: [
                                                              BoxShadow(
                                                                color: AppColor.PlaceholderBg.withOpacity(0.5),
                                                                offset: Offset(0, 5),
                                                                blurRadius: 5,
                                                              )
                                                            ],
                                                            color: Colors.white,
                                                          ),
                                                          child: Column(
                                                            mainAxisAlignment:MainAxisAlignment.end,
                                                            children: [
                                                              Text("Totl Price"),
                                                              Text(" 1500", style: TextStyle(color: AppColor.primary, fontWeight: FontWeight.bold),),
                                                              SizedBox(
                                                                width: 150,
                                                                
                                                                child: ElevatedButton(onPressed: (){}, 
                                                                child: Row(
                                                                  mainAxisAlignment:MainAxisAlignment.center,
                                                                  children: [
                                                                    Image.asset(
                                                                      Helper.getAssetName("shopping_cart.png"), height: 20,
                                                                    ),
                                                                    Text("Add to card"),
                                                                  ],
                                                                )),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                     ),
                                                     Padding(
                                                       padding: const EdgeInsets.all(0.8),
                                                       child: Align(
                                                        alignment: Alignment.centerRight,
                                                         child: Container(
                                                          width: 60,
                                                          height: 60,
                                                          decoration: ShapeDecoration(
                                                            color: Colors.white,
                                                            shadows: [
                                                              BoxShadow(
                                                                color: AppColor.placeholder.withOpacity(0.3),
                                                                offset: Offset(0, 5),
                                                                blurRadius: 5,
                                                              )
                                                            ],
                                                            shape: CircleBorder(
                                                          ),
                                                          ),
                                                          child: Image.asset(Helper.getAssetName("shopping_cart.png"),height: 10,),
                                                         ),
                                                       ),
                                                     ), 
                                                  ],
                                                ),
                                              ),
                                            //),
                                          ],
                                        ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  //children[
                                    //Padding(padding: padding)
                                  //]
                                ),
                           ]
                          ),
                        ),
                      ],
                    ),
                    //SizedBox(
                      //height: 10,
                      //width: 10,
                    //),
                  ],
                ),
              ),
            ),
          Positioned(
            bottom: 0,
            left: 0,
            child: CustomNavBar(), 
          ),
        ],
      ),
    );
  }
  
}