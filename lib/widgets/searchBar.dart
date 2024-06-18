import 'package:flutter/material.dart';
import '../const/colors.dart';
import '../utils/helper.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding( 
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
    );
  }
  
}