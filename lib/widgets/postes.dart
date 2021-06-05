
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttergetxappsm/constans/constants.dart';

Widget UserPostes(context,imgListpost){
  return Container(
    child: Column(
      children: [
        ListTile(
          leading: Container(
            child: CircleAvatar(
              radius: 40,
              child: ClipRRect(
                  borderRadius:BorderRadius.circular(200),
                  child: Image.asset("assets/user1.jfif",fit: BoxFit.cover,)),
              // AssetImage(usersDetails[index]['image']),
            ),
            decoration: new BoxDecoration(
              shape: BoxShape.circle,
            ),
          ),
          title: Text("Jhon Doe",style: TextStyle(fontWeight: FontWeight.bold),),
          subtitle: Row(children: [
            Text("Alexander,USA"),
            Text("  |  "),
            Text("2m ago "),
          ],),
          trailing: Icon(Icons.save),
        ),
        //schools image container
        Container(
          height: sizeheight(context)*0.28,
          width: sizeWidth(context)*0.85,
          decoration: new BoxDecoration(
            //color: Colors.red,
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage(
                  //'assets/schoolimage.jpg'
                  imgListpost
              ),
              fit: BoxFit.fill,
            ),
          ),
        ),
        SizedBox(height: 10.0),
        //imagetile
        Container(
          margin: EdgeInsets.only(left:sizeWidth(context)*0.06,right: 0.06),
          child:Column(
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Text("City School",style: TextStyle(color: primaryColor),)),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text("Lorem ipsum dolor sit amet, consectetur",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
              Row(
                children: [
                  Text("By john Smith"),
                  Text("  |  "),
                  Text("Mar 07 2020"),
                ],
              ),
              SizedBox(height: 15.0),
              Container(
                height: 2.0,
                width: sizeWidth(context),
                color: Colors.grey[300],
              ),
              SizedBox(height: 5.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      child: Row(
                        children: [
                          Icon(Icons.favorite_border_outlined,color: Colors.blue,),
                          Text(" 20 Likes ",style: TextStyle(color: Colors.grey),),
                        ],
                      )),
                  Container(
                      child: Row(
                        children: [
                          Icon(Icons.mode_comment_outlined,color: Colors.grey),
                          Text("10 Comments",style: TextStyle(color: Colors.grey),),
                        ],
                      )),

                  SizedBox(width: 20.0),
                  Container(
                      child: Row(
                        children: [
                          Icon(Icons.share_outlined,color: Colors.grey),
                          Text("7 Share",style: TextStyle(color: Colors.grey),),
                        ],
                      )),
                ],
              ),
              SizedBox(height: 5.0),
              Container(
                height: 2.0,
                width: sizeWidth(context),
                color: Colors.grey[300],
              ),
              SizedBox(height: 10.0),
            ],
          ),
        ),

      ],
    ),
  );
}