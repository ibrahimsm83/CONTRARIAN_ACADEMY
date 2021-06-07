
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttergetxappsm/constans/constants.dart';

Widget homeAppbar(String title,String path){

  return AppBar(
    // backgroundColor:Colors.grey[400],
    backgroundColor:SecondryColor,

    //SecondryColor,
    leading: Icon(Icons.menu,color: primaryColor,),
    title: Text(title,style: TextStyle(color: Colors.black),),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right:15.0),
        child: Icon(Icons.location_on_outlined,size: 30,color: Colors.grey,),
      ),
      Padding(
        padding: const EdgeInsets.only(right:15.0),
        child: Icon(Icons.notifications_active_outlined,size: 30,color: Colors.grey,),
      ),
      Padding(
        padding: const EdgeInsets.only(right:15.0),
        child: CircleAvatar(
          radius: 25,
          //url
          backgroundImage: AssetImage(path),
        ),
      )
    ],
  );
}