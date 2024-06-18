import 'package:flutter/material.dart';

class Profil extends StatefulWidget {
  const Profil({Key? key}):super(key: key);

  @override
  State<Profil> createState()=>_Profile();
  
}

class _Profile extends State<Profil> {
  String title="Profile";
  String item1="Diabétique";
  String item2="Hypertendu";
  String item3="Autre";
  
  bool? get newValue => true;

  @override
  Widget build(BuildContext context){
    return ListTile(
      title:Text(title),
      trailing: PopupMenuButton(
        itemBuilder: (context) =>[
          PopupMenuItem(
            child: Text(
              item1
            ),
            value: item1,
          ),
          PopupMenuItem(
            child: Text(
              item2
            ),
            value: item2,
          ),
          PopupMenuItem(
            child: Text(
              item3
            ),
            value: item3,
          ),
        ],
        onSelected: (String value) {
          setState(() {
            title=newValue as String;
          });
        },
      ),
    );
    
  }
}