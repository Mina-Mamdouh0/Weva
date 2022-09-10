
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:weva/view/widget/buttons.dart';
import 'package:weva/view/widget/helper.dart';

import 'login_screen.dart';

class VerifyScreen extends StatelessWidget {
  const VerifyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            height: size.height*0.85,
            padding: const EdgeInsets.all(30.0),
            decoration: const BoxDecoration(
              color: Color(0XFFECF6FF),
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40),
                  bottomLeft: Radius.circular(40)
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children:  [
                const SizedBox(
                  height: 100,
                  width: double.infinity,
                  child:  Center(
                    child: Text('Weva',
                      style: TextStyle(fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),),
                  ),
                ),
                const Text('verify massage ',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0XFF007D95)
                  ),),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15,),
                const Text('0:59',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0XFF0044FF)
                  ),),
                const SizedBox(height: 15,),
                const Text('send SMS agine ',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold,
                      color: Color(0XFF0086C8),
                  ),),
                const SizedBox(height: 15,),
                Expanded(child: Image.asset('assets/images/vphone.png')),
              ],
            ),),
          ButtonIntro(text: 'CONTINUE',onTap: (){
            navigatorTo(context: context, screen:const  LoginScreen());
          },),
        ],
      ),
    );
  }
}
