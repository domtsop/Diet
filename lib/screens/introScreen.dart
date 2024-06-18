import 'package:diet_app/const/colors.dart';
import 'package:diet_app/screens/homeScreen.dart';
import 'package:diet_app/utils/helper.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatefulWidget{
  static const routeName='/introScreen';



  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  var _controller;
  late int count;

    final List<Map<String,String>> _pages=[
    {
      "image": "on_boarding_1.png",
      "title": "Find Food you Love",
      "desc": 
        "Discover the best food free over 1,000 restaurants and fast delivery to your doorstep",
    },
     {
      "image": "on_boarding_2.png",
      "title": "Fast Delivery",
      "desc": 
        "Fast food delivery to your home, office wherever you are ",
    },
     {
      "image": "on_boarding_3.png",
      "title": "Live Tracking",
      "desc": 
        "Real time tracking of your food on the app once placed the order",
    },
  ];

  @override
  void initState(){
    _controller =new PageController();
    count=0;
    super.initState();
  }


  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        width: Helper.getScreenWidth(context),
        height: Helper.getScreenHeigth(context),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: Column(
              children: [
                  Container(
                    height: 450,
                    width: double.infinity,
                    child: PageView.builder(
                      controller: _controller,
                      onPageChanged:(value) {
                        setState(() {
                          count=value;
                        });
                      },
                      itemBuilder: 
                        (context,index){ 
                          return Image.asset(
                            Helper.getAssetName(
                              _pages[index]["image"]!
                            )
                          );
                        },
                      itemCount: _pages.length,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 5,
                        backgroundColor: count == 0 ? AppColor.bleu: AppColor.placeholder,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CircleAvatar(
                        radius: 5,
                        backgroundColor: count == 1 ? AppColor.bleu: AppColor.placeholder,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CircleAvatar(
                        radius: 5,
                        backgroundColor: count == 2 ? AppColor.bleu: AppColor.placeholder,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(_pages[count]["title"]!),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    _pages[count]["desc"]!,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 45,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
                      }, 
                      child: Text("Next"),
                    ),
                  )
              ],
            ),
          ),
        ), 
      ),
    );
  }
}