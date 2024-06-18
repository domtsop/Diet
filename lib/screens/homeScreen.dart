import 'package:diet_app/const/colors.dart';
import 'package:diet_app/screens/individualItem.dart';
import 'package:diet_app/utils/helper.dart';
import 'package:diet_app/widgets/AppBarWidget.dart';
import 'package:diet_app/widgets/DrawerWidget.dart';
import 'package:diet_app/widgets/customNavBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const routeName='/homeScreen';
  
  
  //get child => null;
  
  //get drawer => null;

  @override
  Widget build(BuildContext context){
    
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView( 
              child: Column( 
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppBarWidget(),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal:20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Welcome!",
                          style: Helper.getTheme(context).headline5,
                          ),
                        Image.asset(
                          Helper.getAssetName("shopping_cart.png"),height:20,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20
                    ),
                    child: Text(
                      "Delivery to",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: DropdownButtonHideUnderline(
                      child: SizedBox(
                        width: 250,
                        child: DropdownButton(
                          value: "Current Location",
                          items: [DropdownMenuItem(child: Text(
                            "Current Location",
                          ),
                          value: "Current Location",
                          ),
                          ],
                          icon: Image.asset(
                            Helper.getAssetName("dropdown.png"),height: 8,
                          ),
                          style: Helper.getTheme(context).headline4,
                           onChanged: (__) {},
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                              Padding( 
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
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
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    //height: 120,
                    child: Padding(padding: 
                      const EdgeInsets.only(
                        left: 10,
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            SizedBox(width: 10,),
                            CategoryCard(image:
                              Image.asset(
                                Helper.getAssetName("4.png"),
                                fit: BoxFit.cover,
                             ),name:"Proteins",
                            ),
                             SizedBox(width: 10,),
                             CategoryCard(image:
                              Image.asset(
                                Helper.getAssetName("legume.png"),
                                fit: BoxFit.cover,
                             ),name:"Vegetable",
                            ),
                             SizedBox(width: 10,),
                             CategoryCard(image:
                              Image.asset(
                                Helper.getAssetName("drink.png"),
                                fit: BoxFit.cover,
                             ),name:"Drink",
                            ),
                             SizedBox(width: 10,),
                             CategoryCard(image:
                              Image.asset(
                                Helper.getAssetName("briyani.png"),
                                fit: BoxFit.cover,
                             ),name:"Rice",
                            ),
                             SizedBox(width: 10,),
                             CategoryCard(image:
                              Image.asset(
                                Helper.getAssetName("3.png"),
                                fit: BoxFit.cover,
                             ),name:"Fruits",
                            ),
                             SizedBox(width: 10,),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Popular Restaurants",
                          style: Helper.getTheme(context).headline5,
                        ),
                        TextButton(
                          onPressed: () {
                            
                          },
                          child: Text(
                            "View All"
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  RestaurantCard(
                    image: Image.asset(
                      Helper.getAssetName("6.png"),
                      fit: BoxFit.cover,
                    ), name: "Rice by Cameroon",
                  ),
                  SizedBox(height: 10,),
                  RestaurantCard(
                    image: Image.asset(
                      Helper.getAssetName("prevenirdi.png"),
                      fit: BoxFit.cover,
                    ),
                    name: "Salade by Cameroon",
                  ),
                   SizedBox(height: 10,),
                  RestaurantCard(
                    image: Image.asset(
                      Helper.getAssetName("pattetorsadéespourdiabetique.png"),
                      fit: BoxFit.cover,
                    ),name: "Legged by Cameroon",
                  ),
                  //SizedBox(
                    //height:5 ,
                  //),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          " Most Popular",
                          style: Helper.getTheme(context).headline5,
                        ),
                        TextButton(
                          onPressed: () {
                            
                          },
                          child: Text(
                            "View All"
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    child: Container(
                      width: double.infinity,
                      //height: 100,
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          MostPopu(
                            image: Image.asset(
                              Helper.getAssetName("basilicpourdi.png"),
                              fit: BoxFit.cover,
                            ), 
                            name: "Salade",
                          ),
                
                          SizedBox(
                            width: 20,
                          ),
                          MostPopu(
                            image: Image.asset(
                              Helper.getAssetName("cafe.png"),
                              fit: BoxFit.cover,
                            ), name: "Cafe",
                          ),
                          
                          SizedBox(
                            width: 10,
                          ),
                          MostPopu(
                            image: Image.asset(
                              Helper.getAssetName("peer.png"),
                              fit: BoxFit.cover,
                            ), 
                          name: "Peers",),
                          
                          SizedBox(
                            width: 20,
                          ),
                          MostPopu(
                            image: Image.asset(
                              Helper.getAssetName("pj.png"),
                              fit: BoxFit.cover,
                            ), name: "Fruits",
                          ),

                        ],
                      ),
                    ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Recent Items",
                          style: Helper.getTheme(context).headline5,
                        ),
                          TextButton(onPressed: (){}, 
                            child: Text("View all"),
                          ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed(IndividualItem.routeName);
                          },
                          child: RecentItemsCard(
                            image: Image.asset(
                              Helper.getAssetName("pj.png"),
                              fit: BoxFit.cover,
                            ),
                              name: "Vegetable by restaurant",
                          ),
                        ),
                        RecentItemsCard(
                          image: Image.asset(
                            Helper.getAssetName("briyani.png"),
                            fit: BoxFit.cover,
                          ), name: "Rice by Restaurant",
                        ),
                        RecentItemsCard(
                          image: Image.asset(
                            Helper.getAssetName("drink2.png"),
                            fit: BoxFit.cover,
                          ),
                          name: "Drink by restaurant",
                        ),
                      ],
                    ),
                  ),
                  //drawer:DrawerWidget(),
                  
                ],
              ),
            ),
          ),
          Positioned(bottom:0, left: 0 , child: CustomNavBar(
            home: true,
          )),
        ],
      )
    );
  }
}

class RecentItemsCard extends StatelessWidget {
  const RecentItemsCard({
   key,
   required String name,
   required Image image,
    
  }):_image =image, _name=name, super(key: key) ;

  final Image _image;
  final String _name;
  @override
  Widget build(BuildContext context) {
    return Row( 
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            width: 80,
            height: 80,
            child: _image,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Expanded(
          child: Container(
            height: 100,
            //height: double.infinity,
            //width: double.infinity,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisSize: MainAxisSize.max,
              children: [
                Text(_name,
                  style: Helper.getTheme(context).headline3?.copyWith(color:AppColor.primary),
                ),
                Row(
                  children: [
                    Text("Cafe"),
                    SizedBox(
                      width: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                      bottom: 2.0
                    ),
                    child: Text(
                      ".",
                      style: TextStyle(
                        color: AppColor.bleu,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    ),
                    Text(
                      "Restaurant",
                    ),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      Helper.getAssetName("rate.png"),height: 15,
                    ),
                    SizedBox(
                      width: 5,
                      //width: Icons.crop_16_9_outlined,
                    ),
                    Text(
                      "3.9",
                      style: TextStyle(
                        color: AppColor.bleu,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("(127) Ratings"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class MostPopu extends StatelessWidget {
  const MostPopu({
    key,
   required String name,
   required Image image,
    
  }):_image =image, _name=name, super(key: key) ;

  final Image _image;
  final String _name;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            width: 200,
            height: 180,
            child: _image,
            
          ),
        ),
        
        Text(
          _name,
          style: Helper.getTheme(context).headline3,
        ),
      //],
    //),
    //SizedBox(
      //height: 5,
    //),
    Row(
      children: [
        //SizedBox(
          //width: 5,
        //),
        Text(
            "Cafe",  
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 5.0),
          child: Text(
              ".",
              style: TextStyle(
                color: AppColor.bleu,
                fontWeight: FontWeight.w900,
              ),
          ),
        ),  
        Text(
            "Restaurant",  
        ),
        SizedBox(
          width: 5,
        ),
      Image.asset(Helper.getAssetName("rate.png"),height: 15,
        ),
        SizedBox(
          width: 5,
          //width: Icons.crop_16_9_outlined,
        ),
        Text(
          "3.9",
          style: TextStyle(
            color: AppColor.bleu,
          ),
        ),
      ],
    ),
      ],
    );
  }
}

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({
    //super.key,
    key,
   required String name,
   required Image image,
    
  }):_image =image, _name=name, super(key: key) ;

  final Image _image;
  final String _name;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:250,
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height:200,
            width : double.infinity,
            child: _image,
          ),
          SizedBox(
            height: 5,
          ),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 20,),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      _name,
                      style: Helper.getTheme(context).headline3,
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Image.asset(Helper.getAssetName("rate.png"),height: 15,
                    ),
                    SizedBox(
                      width: 5,
                      //width: Icons.crop_16_9_outlined,
                    ),
                    Text(
                      "3.9",
                      style: TextStyle(
                        color: AppColor.bleu,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                        "(127 ratings)",
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                        "Restaurant",  
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Text(
                          ".",
                          style: TextStyle(
                            color: AppColor.bleu,
                            fontWeight: FontWeight.w900,
                          ),
                      ),
                    ),
                      SizedBox(
                      width: 5,
                    ),
                    Text(
                        "Cmeroonians Food",  
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
        
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
   key,
   required String name,
   required Image image,
    
  }):_image =image, _name=name, super(key: key) ;

  final Image _image;
  final String _name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            width: 100,
            height: 100,
            child: _image,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          _name,
          style: Helper.getTheme(context).headline4?.
          copyWith(color: AppColor.primary),
        ),
      ],
    );
  }
}