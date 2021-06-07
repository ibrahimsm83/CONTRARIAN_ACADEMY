

import 'package:flutter/material.dart';
import 'package:fluttergetxappsm/constans/constants.dart';

Widget Bottomappbar(){
  return  BottomAppBar(
    color: Colors.white,
    shape: CircularNotchedRectangle(),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[

        IconButton(
          icon: Icon(Icons.home_outlined),
          color: primaryColor,
          onPressed: (){},
        ),
        IconButton(
          icon: Icon(Icons.message_outlined),
          color: primaryColor,
          onPressed: (){},
        ),
        SizedBox(width: 5,),
        IconButton(
          icon: Icon(Icons.add_box_outlined),
          color: primaryColor,
          onPressed: (){},
        ),
        IconButton(
          icon: Icon(Icons.account_circle_outlined),
          color: primaryColor,
          onPressed: (){},
        ),
        // Divider(),
      ],
    ),
  );

}