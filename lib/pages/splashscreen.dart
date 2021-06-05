

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';
import 'signupwithmedia.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () => Get.off(SignUpWithMedia()));
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children:<Widget> [
      Image.asset('assets/SlpaceScreen.jpg',fit: BoxFit.cover,),
      ],
    ),
    );
  }
}
