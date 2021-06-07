

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:fluttergetxappsm/api/instituename.dart';
import 'package:fluttergetxappsm/constans/constants.dart';
import 'package:fluttergetxappsm/widgets/bottomnavbar.dart';
import 'package:fluttergetxappsm/widgets/carousel.dart';
import 'package:fluttergetxappsm/widgets/postes.dart';
import 'package:fluttergetxappsm/widgets/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../constans/constants.dart';
import '../constans/constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

//carousel images
final List<String> imgList = [
               "assets/crasoul1.jpg",
                "assets/crasoul2.jpg",
                 "assets/crasoul3.jpg",
                 "assets/crasoul4.jpg",
];
final List<String> imgListpost = [
  "assets/postimg0.jpg",
  "assets/postimg1.jpg",
  "assets/postimg2.jpg",
  "assets/postimg3.jpg",
  "assets/postimg4.jpg",
];


//postes images
class _HomePageState extends State<HomePage> {
  bool colorva=true;
  var value;


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor:Colors.grey[200],
      appBar: homeAppbar(
        "Hi,jhon",
        "assets/user3.jpg",
        // "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      ),
      //bottom nav bar
      bottomNavigationBar:Bottomappbar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () {},
        child: Icon(Icons.home_outlined),
      ),
   // );


    //bottom nav bnar


      body: SingleChildScrollView(
        child: Column(
          children: [
            //searchbox
            Container(
              margin: EdgeInsets.all(8.0),
              padding: EdgeInsets.only(left:8.0),
              height: 44,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextField(
            decoration: InputDecoration(
            hintText: "Search",
            hintStyle: TextStyle(color: Colors.grey),
            enabledBorder: InputBorder.none,
            focusedErrorBorder: InputBorder.none,
            suffixIcon: Icon(Icons.search),
            ),
              ),
            ),
               //institute names
            Container(
             height: sizeheight(context)*0.04,
             child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: isntituteNames.length,
                  itemBuilder: (context, index) {
                    return  Padding(
                      padding: const EdgeInsets.only(left:4.0,right: 4.0),
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            colorva=false;
                            value=index;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.fromLTRB(15,8,15,8),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.blueAccent),
                            color:isntituteNames[index]['InstituteName']=="ALL"&&colorva?primaryColor:index==value?primaryColor:Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                            child:Text(isntituteNames[index]['InstituteName'],style: TextStyle(color:isntituteNames[index]['InstituteName']=="ALL"&&colorva?Colors.white:index==value?Colors.white:primaryColor,fontWeight: FontWeight.bold),),

                          //child:isntituteNames[index]['InstituteName']=="ALL"&&colorva?Text(isntituteNames[index]['InstituteName'],style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),):index==value?Text(isntituteNames[index]['InstituteName'],style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),):Text(isntituteNames[index]['InstituteName'],style: TextStyle(color:primaryColor,fontWeight: FontWeight.bold),)
                        ),
                      ),
                    );
                  },
                  scrollDirection: Axis.horizontal,
              ),
               ),
            SizedBox(height: 10),
            //users
            Container(
              //color: Colors.red,
              height: sizeheight(context)*0.12,
              //margin: EdgeInsets.only(bottom:10.),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: usersDetails.length,
                itemBuilder: (context, index) {
                  return  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right:3.0,left: 3.0),
                        child: Container(
                          child: CircleAvatar(
                            radius:sizeWidth(context)*0.082,
                            backgroundColor:Colors.white,
                            child: CircleAvatar(
                              radius: 28,
                              //backgroundImage:AssetImage(usersDetails[index]['image']),
                              child: ClipRRect(
                                    borderRadius:BorderRadius.circular(200),
                                  child: Image.asset(usersDetails[index]['image'], width: 150, height: 150,)),
                              // AssetImage(usersDetails[index]['image']),
                            ),
                          ),
                  decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  border: new Border.all(
                  color: primaryColor,
                  width: 2.0,
                  ),
                        ),
                      ),
                      ),
                       Text(usersDetails[index]['usersName']),
                      //Text("users")
                    ],
                  );
                },
                scrollDirection: Axis.horizontal,
              ),
            ),
            //schools image
            UserPostes(context,imgListpost[0]),
            //craouser
            CarouselWithDotsPage(imgList: imgList),
            //schools image
            UserPostes(context,imgListpost[1]),
            //GridView
      Container(
        margin: EdgeInsets.only(left: 8,right: 8,bottom: 10 ),
        child:Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween ,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text("Categories",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text("View All",style: TextStyle(fontSize: 18,color: primaryColor),),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Container(
                //   height:300,
                //   width: 300,
                //   child:GridView.builder(
                //     itemCount: 2,
                //     itemBuilder: (context,index){
                //       return Card(
                //         elevation: 10,
                //         child: GridTile(
                //           footer: Text("schools"),
                //           child: Center(
                //             child: Image.asset(imgListpost[0]),
                //           ),
                //         ),
                //
                //       );
                //     },
                //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                //
                //   ) ,)

                //Schools
                Container(
                  width:sizeWidth(context)*0.43,
                  height: sizeheight(context)*0.16,
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.all(
                        Radius.circular(20.0)),
                    image: new DecorationImage(
                      image: ExactAssetImage('assets/postimg4.jpg'),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  child:Padding(
                    padding: const EdgeInsets.only(bottom:10.0),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                        child: Text("school",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                  ),
                ),

                //Collages
                Container(
                  width:sizeWidth(context)*0.43,
                  height: sizeheight(context)*0.16,
                    decoration: new BoxDecoration(
                      borderRadius: BorderRadius.all(
                          Radius.circular(20.0)),
                      image: new DecorationImage(
                        image: ExactAssetImage('assets/postimg3.jpg'),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  child:Padding(
                    padding: const EdgeInsets.only(bottom:10.0),
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text("Collages",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold))),
                  ),
                ),

              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //Schools
                Container(
                  width:sizeWidth(context)*0.43,
                  height: sizeheight(context)*0.16,
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.all(
                        Radius.circular(20.0)),
                    image: new DecorationImage(
                      image: ExactAssetImage('assets/postimg3.jpg'),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  child:Padding(
                    padding: const EdgeInsets.only(bottom:10.0),
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text("Universities",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold))),
                  ),
                ),
                //Collages
                Container(
                  width:sizeWidth(context)*0.43,
                  height: sizeheight(context)*0.16,
                    decoration: new BoxDecoration(
                      borderRadius: BorderRadius.all(
                          Radius.circular(20.0)),
                      image: new DecorationImage(
                        image: ExactAssetImage('assets/postimg4.jpg'),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  child:Padding(
                    padding: const EdgeInsets.only(bottom:10.0),
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text("Academies",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold))),
                  ),
                ),

              ],
            )
          ],
        )
      ),
            //Schools images posts
            UserPostes(context,imgListpost[2]),
            UserPostes(context,imgListpost[3]),
            //Listview builder
      Container(
        margin: EdgeInsets.only(left: 8,right: 8,bottom: 10 ),
        //color: Colors.red,
        child:Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween ,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text("Teacher Review",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text("View All",style: TextStyle(fontSize: 18,color: primaryColor),),
                ),
              ],
            ),
              Container(
               // height: sizeheight(context),

                child: ListView.builder(
                  shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                  itemCount: teacherReviews.length-1,
                    itemBuilder:(BuildContext,index){
                    return  Container(
                      margin: EdgeInsets.only(left: 8,right: 8,bottom: 8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height:sizeheight(context)*0.14,
                            width: sizeWidth(context)*0.3,
                            decoration: new BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10.0)),
                              image: new DecorationImage(
                                image: ExactAssetImage(teacherReviews[index]['image']),
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              //mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(teacherReviews[index]['Acadmyname'],style: TextStyle(color: primaryColor),),
                                SizedBox(height: 8),
                                Container(
                                    width: sizeWidth(context)/2,
                                    //color: Colors.red,
                                    child: Text(teacherReviews[index]['Review'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
                                SizedBox(height: 8),
                                Row(
                                  children: [
                                    Text(teacherReviews[index]['Reviewersname']),
                                    Text("  |  "),
                                    Text(teacherReviews[index]['Date']),
                                  ],
                                ),
                              ],),
                          )

                        ],
                      ),
                    );

                    }
                ),
              ),
            //SizedBox(height: 20),
            UserPostes(context,imgListpost[3]),
      ],
    ),
      ),
],
      ),
      ),
    );
  }
}