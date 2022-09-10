
import 'package:flutter/material.dart';
import 'package:weva/view/screen/phonenumber_screen.dart';
import 'package:weva/view/widget/buttons.dart';
import 'package:weva/view/widget/helper.dart';
import 'package:weva/view/widget/text_form_refactor.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({Key? key}) : super(key: key);

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
          child: SingleChildScrollView(
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
                const Text('Personal Information',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0XFF007D95)
                  ),),
                const SizedBox(height: 15,),
                TextRefactorFiled(
                  controller: TextEditingController(),
                  hintText: 'Full Name',
                  suffixIcon: false,
                ),
                TextRefactorFiled(
                  controller: TextEditingController(),
                  hintText: 'Date of Birth',
                  suffixIcon: true,
                ),
                TextRefactorFiled(
                  controller: TextEditingController(),
                  hintText: 'Country/Region',
                  suffixIcon: true,
                ),
                TextRefactorFiled(
                  controller: TextEditingController(),
                  hintText: 'City',
                  suffixIcon: true,
                ),TextRefactorFiled(
                  controller: TextEditingController(),
                  hintText: 'zone',
                  suffixIcon: true,
                ),
              ],
            ),
          ),),
          ButtonIntro(text: 'CONTINUE',onTap: (){
            navigatorTo(context: context, screen: const PhoneNumberScreen());
          },),
        ],
      ),
    );
  }
}
