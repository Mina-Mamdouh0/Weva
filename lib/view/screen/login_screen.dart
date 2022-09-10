
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:weva/view/screen/home/main_screen.dart';
import 'package:weva/view/widget/buttons.dart';
import 'package:weva/view/widget/helper.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
                  height: 150,
                  width: double.infinity,
                  child:  Center(
                    child: Text('Weva',
                      style: TextStyle(fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color(0XFF3AB3BC),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 15),
                        padding: const EdgeInsets.all(8),
                        decoration:  BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(
                            color: const Color(0XFF007D95),
                            width: 2
                          )
                        ),
                        child: const Center(
                          child: Icon(FontAwesomeIcons.google,
                          size: 25,
                          color: Color(0XFF007D95),),
                        ),
                      ),
                      const Spacer(),
                      const Text('LOGIN WITH GOOGLE',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),),
                      const Spacer(),
                    ],
                  ),
                ),
                const SizedBox(height: 15,),
                Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color(0XFFEDF6FE),
                    border: Border.all(
                      color:  const Color(0XFF3AB3BC),
                      width: 3,
                    )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 15),
                        padding: const EdgeInsets.all(8),
                        decoration:  BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            border: Border.all(
                                color: const Color(0XFF007D95),
                                width: 2
                            )
                        ),
                        child: const Center(
                          child: Icon(FontAwesomeIcons.facebook,
                            size: 25,
                            color: Color(0XFF007D95),),
                        ),
                      ),
                      const Spacer(),
                      const Text('LOGIN WITH FACEBOOK',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color:  Color(0XFF3AB3BC),
                        ),),
                      const Spacer(),
                    ],
                  ),
                ),

                Expanded(child: Image.asset('assets/images/login.png')),
              ],
            ),),
          ButtonIntro(text: 'CONTINUE',onTap: (){
            navigatorTo(context: context, screen: MainScreen());
          },),
        ],
      ),
    );
  }
}
