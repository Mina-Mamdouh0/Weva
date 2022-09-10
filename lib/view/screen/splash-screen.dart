
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:weva/view/widget/helper.dart';

import 'intro_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      navigatorTo(context: context,screen: const OnBoarding());
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration:  const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0XFFD8F2E9),
              Color(0XFFF3FFFB),
              Color(0XFFD7F9ED),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: const Center(
          child: Text('W',
          style: TextStyle(
            fontSize: 50,
            color: Color(0XFF3AB3BC),
            fontWeight: FontWeight.bold,
          ),),
        ),
      ),
    );
  }
}
