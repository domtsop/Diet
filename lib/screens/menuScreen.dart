import 'package:diet_app/const/colors.dart';
import 'package:diet_app/screens/dessertScreen.dart';
import 'package:diet_app/utils/helper.dart';
import 'package:diet_app/widgets/AppBarWidget.dart';
import 'package:diet_app/widgets/DrawerWidget.dart';
import 'package:diet_app/widgets/customNavBar.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  static const routeName ="/menuScreen";
  
 // var drawer;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  AppBarWidget(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Menu",
                          style: Helper.getTheme(context).headline5,
                        ),
                        Image.asset(Helper.getAssetName("shopping_cart.png"), height: 20,),
                      ],
                    ),
                  ),
                  SizedBox(height: 5,),
            
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
                              
                  SizedBox(height: 5,),
                  SizedBox(
                    height: Helper.getScreenHeigth(context)*0.7,
                    width: Helper.getScreenWidth(context),
                    child: Stack(
                      children: [
                        Container(
                          height:double.infinity,
                          width: 100,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30), 
                                bottomRight: Radius.circular(30), 
                              ),
                            ),
                            color: AppColor.bleu,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MenuCard(
                                image: Image.asset(
                                  Helper.getAssetName("lesims.png"),
                                  fit: BoxFit.cover,
                                ), name: "Food", count: '120', 
                              ),
                              SizedBox(height: 10,),
                              MenuCard(
                                image: Image.asset(
                                  Helper.getAssetName("hh.png"),
                                  fit: BoxFit.cover,
                                ), name: "Bean",count: '90', 
                              ),
                              SizedBox(height: 10,),
                              MenuCard(
                                image: Image.asset(
                                  Helper.getAssetName("cafe.png"),
                                  fit: BoxFit.cover,
                                ), name: "Cafe",count: '200', 
                              ),
                              SizedBox(height: 10,),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pushNamed(DessertScreen.routeName);
                                } ,
                                child: MenuCard(
                                  image: Image.asset(
                                    Helper.getAssetName("rep.png"),
                                    fit: BoxFit.cover,
                                  ), name: "Promotion",count: '80',
                                ),
                              ),
                            ],
                          ),
                        ),
                      //drawer:DrawerWidget(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: CustomNavBar(
              menu: true,
            ),
          ),
        ],
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  const MenuCard({
   key,
   required String count,
   required String name,
   required Image image,
    
  }):_image =image, _name=name, _count=count, super(key: key) ;

  final Image _image;
  final String _count;
  final String _name;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 80,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          padding: const EdgeInsets.symmetric(horizontal: 60),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              bottomLeft: Radius.circular(50),
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: AppColor.placeholder,
                offset: Offset(0, 5),
                blurRadius: 10,
              ),
            ]
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
               _name,
               style: Helper.getTheme(context).headline4?.copyWith(
                color: AppColor.primary,
               ), 
               
              ),
              SizedBox(height: 5),
              Text("$_count items"),
            ],
          ),
        ),
        SizedBox(
          height: 80,
          child: Align(
            alignment: Alignment.centerLeft,
            child: ClipOval(
              child: Container(
                height: 60,
                width: 60,
                child: _image
              ),
            ),
          ),
        ),
        SizedBox(
          height: 80,
          child: Align(
            alignment: Alignment.centerRight,
            child: Container(
                height: 40,
                width: 40,
                decoration: ShapeDecoration(
                  shape: CircleBorder(),
                  color: Colors.white,
                  shadows: [
                    BoxShadow(
                      color: AppColor.placeholder,
                      offset: Offset(0, 2),
                      blurRadius: 5,
                    )
                  ]
                ),
                child: Image.asset(
                  Helper.getAssetName("btn_next.png"),
                  height: 10,
                ),
              ),
          ),
        ),
      ],
    );
  }
}