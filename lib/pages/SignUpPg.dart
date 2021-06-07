import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttergetxappsm/constans/constants.dart';
import 'package:fluttergetxappsm/pages/forgetpasswordpg.dart';
import 'package:fluttergetxappsm/pages/homepg.dart';
import 'package:get/get.dart';

class SiginUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: ListView(
          children: [
            Container(
              height: sizeheight(context),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 40,),
                  Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(icon: Icon(Icons.arrow_back,color: primaryColor,), onPressed: (){Get.back();})),
                  Expanded(child: SizedBox(height: 5,)),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: EdgeInsets.only(left:  sizeWidth(context) * 0.08,
                          right:  sizeWidth(context) * 0.08),
                      child: Text(
                        "Create Your Account",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
//Name
                  Container(
                    width: sizeWidth(context),
                    margin: EdgeInsets.only(
                        top: 20,
                        left: sizeWidth(context) * 0.08,
                        right:  sizeWidth(context) * 0.08),
                    child: TextField(
                      //controller: Controller_sales,
                      decoration: InputDecoration(hintText: "First Name",
                        hintStyle:TextStyle(color: Colors.grey),),
                      onChanged: (value) => () {},
                    ),
                  ),
                  //last Name
                  Container(
                    width: sizeWidth(context),
                    margin: EdgeInsets.only(
                        top: 20,
                        left: sizeWidth(context) * 0.08,
                        right:  sizeWidth(context) * 0.08),
                    child: TextField(
                      //controller: Controller_sales,
                      decoration: InputDecoration(hintText: "Last Name",
                        hintStyle:TextStyle(color: Colors.grey),),
                      onChanged: (value) => () {},
                    ),
                  ),
                  Container(
                    width: sizeWidth(context),
                    margin: EdgeInsets.only(
                        top: 20,
                        left: sizeWidth(context) * 0.08,
                        right:  sizeWidth(context) * 0.08),
                    child: TextField(
                      //controller: Controller_sales,
                      decoration: InputDecoration(hintText: "Email Address",
                        hintStyle:TextStyle(color: Colors.grey),),
                      onChanged: (value) => () {},
                    ),
                  ),
                  //pw
                  Container(
                    width: sizeWidth(context),
                    // height: 100,
                    margin: EdgeInsets.only(
                        top: 20,
                        left: sizeWidth(context) * 0.08,
                        right: sizeWidth(context) * 0.08),
                    child: TextField(
                      //controller: Controller_sales,
                      obscureText: true,
                      decoration: InputDecoration(hintText: "Password",

                        hintStyle:TextStyle(color: Colors.grey),
                      ),
                      onChanged: (value) => () {},
                    ),
                  ),
                  SizedBox(height: 20,),
                  //check box your password
                  InkWell(
                    onTap: (){
                      print("Tabed Forget password");
                      Get.to(ForgetPassword());
                      //ForgetPassword
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Container(
                        child: Text(
                          "Forget your password?",
                          style: TextStyle(
                              color: primaryColor,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  //Login Buttons
                  Container(
                      width:  sizeWidth(context),
                      margin: EdgeInsets.only(
                          left: sizeWidth(context) * 0.16,
                          right: sizeWidth(context) * 0.16),
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      ),
                      child: ElevatedButton(
                        child: Text("SIGN UP"),
                        onPressed: () {
                          Get.to(HomePage());
                        },
                        style: ElevatedButton.styleFrom(
                          primary: primaryColor,
                          textStyle:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0),
                          ),
                        ),
                      )),
                  Expanded(child: SizedBox(height: 5,)),
                  //dont have any account
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                        margin: EdgeInsets.only(bottom: 50),
                        //padding: EdgeInsets.all(10),
                        child: RichText(
                          text: TextSpan(
                              text: 'Already Have an Account?',
                              style: TextStyle(
                                  color: Colors.black,fontSize: 14 ),
                              children: <TextSpan>[
                                TextSpan(text: ' Sign In',
                                    style: TextStyle(
                                        color: primaryColor, fontSize: 18),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        // Get.to(HomePage());
                                        print("SignIntped");
                                      }
                                )
                              ]
                          ),
                        )
                    ),
                  ),
                ],
              ),
            ),
          ],
         // child:
        ),
      ),

    );
  }
}
