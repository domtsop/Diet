import 'package:diet_app/const/colors.dart';
import 'package:diet_app/utils/helper.dart';
import 'package:diet_app/widgets/customNavBar.dart';
import 'package:flutter/material.dart';

class OfferScreen extends StatelessWidget {
  static const routeName ="/offerScreen";

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children: [
                SafeArea(
                  child: Container(
                    height: Helper.getScreenHeigth(context),
                    width: Helper.getScreenWidth(context),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //const SizedBox(
                        //height: 5,
                      //),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Latest Offers",
                              style: TextStyle(
                                  color: AppColor.placeholder,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800),
                            ),
                            IconButton(
                              onPressed: () {
                                //Navigator.push(
                                  //  context,
                                    //MaterialPageRoute(
                                      //  builder: (context) => const MyOrderView()));
                              },
                              icon:Image.asset(Helper.getAssetName(
                                "shopping_cart.png"),
                                width: 25,
                                height: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Find discounts, Offers special\nmeals and more!",
                              style: TextStyle(
                                  color: AppColor.secondary,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            SizedBox(
                              width: Helper.getScreenWidth(context)*0.5,
                              height: 30,
                              child: ElevatedButton(
                                onPressed: (){},
                                child:Text( 
                                  "check Offers", 
                                  style: TextStyle(fontSize: 12), 
                                ), 
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 200,
                        width: double.infinity,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 150,
                              width: double.infinity,
                              child: Image.asset(
                                Helper.getAssetName("offer_3.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Row(
                                children: [
                                 Text(
                                  "Cafe du Cameroun",
                                  style: Helper.getTheme(context).headline4?.copyWith(color: AppColor.primary),
                                 ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                     // ListView.builder(
                       // physics: const NeverScrollableScrollPhysics(),
                       // shrinkWrap: true,
                        //padding: EdgeInsets.zero,
                        //itemCount: offerArr.length,
                        //itemBuilder: ((context, index) {
                         // var pObj = offerArr[index] as Map? ?? {};
                         // return PopularRestaurantRow(
                          //  pObj: pObj,
                           // onTap: () {},
                         // );
                        //}),
                     // ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: CustomNavBar(
              offer: true,
            ),
          ),
        ],
      ),
    );
  }
 }