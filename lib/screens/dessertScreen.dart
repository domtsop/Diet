import 'package:diet_app/const/colors.dart';
import 'package:diet_app/utils/helper.dart';
import 'package:diet_app/widgets/customNavBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DessertScreen extends StatelessWidget {
  static const routeName="/dessertScreen";
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:20.0),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Icon(
                            Icons.arrow_back_ios_rounded, 
                            color: AppColor.primary,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Row(
                            children:[  
                              Text(
                                "Vegetables and Fruits",
                                style: Helper.getTheme(context).headline5,
                              ),
                            ],
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
                    height: 20,
                  ),
                  Padding( 
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Container(
                      height: 45,
                      width: double.infinity,
                      decoration: ShapeDecoration(
                        shape: StadiumBorder(),
                        color: AppColor.PlaceholderBg,
                      ),
                      child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Image.asset(
                          Helper.getAssetName("search.png"),
                          
                        ),
                        hintText: "Search food",
                        hintStyle: TextStyle(
                          color: AppColor.placeholder,
                          fontSize: 18,
                        ),
                        contentPadding:const EdgeInsets.only(top: 15),
                      ),
                      ),
                    ),
                  ),
                   
                  SizedBox(
                    height: 15,
                  ),
                  DessertCard(
                    image: Image.asset(
                      Helper.getAssetName("veg2.png"),
                      fit:BoxFit.cover,
                    ), 
                    name: 'Camerounian vegetable'
                  ),
                  
                SizedBox(
                  height: 5,
                ),
                  DessertCard(
                    image: Image.asset(
                      Helper.getAssetName("veg.png"),
                      fit:BoxFit.cover,
                    ), 
                    name: 'vegetable'
                  ),
                  
                SizedBox(
                  height: 5,
                ),
                  DessertCard(
                    image: Image.asset(
                      Helper.getAssetName("legume.png"),
                      fit:BoxFit.cover,
                    ), 
                    name: 'Fruits and Vegetables'
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  DessertCard(
                    image: Image.asset(
                      Helper.getAssetName("ve.png"),
                      fit:BoxFit.cover,
                    ), 
                    name: 'Fruits'
                  ),
                  SizedBox(
                    height: 100,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0, 
            left:0 , 
            child: CustomNavBar(
              menu: true,
            ),
          ),
        ],
      ),
    );
  }
  
}

class DessertCard extends StatelessWidget {
  const DessertCard({
   key,
   required String name,
   required Image image,
    
  }):_image =image, _name=name, super(key: key) ;

  final Image _image;
  final String _name;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: double.infinity,
      child: Stack(
        children: [
          SizedBox(
            height: 250,
            width: double.infinity,
            child: _image
          ),
          Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter, 
                end: Alignment.topCenter,
                colors: [
                  Colors.black.withOpacity(0.7),
                  Colors.black.withOpacity(0.2),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 70,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _name,
                   // " Camerounian vegetable ",
                    style: Helper.getTheme(context).headline4?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset(Helper.getAssetName("rate.png"), height: 15,),
                      SizedBox(width: 5,),
                      Text("4.9", style: TextStyle(color: AppColor.bleu),),
                      SizedBox(width: 5,),
                      Text("Minute by french", style: TextStyle(color: Colors.white),),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}