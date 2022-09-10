
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:weva/view/screen/verify_screen.dart';
import 'package:weva/view/widget/buttons.dart';
import 'package:weva/view/widget/helper.dart';

enum BestTutorSite { sendSms, call, }
class PhoneNumberScreen extends StatefulWidget {
  const PhoneNumberScreen({Key? key}) : super(key: key);

  @override
  State<PhoneNumberScreen> createState() => _PhoneNumberScreenState();
}

class _PhoneNumberScreenState extends State<PhoneNumberScreen> {
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    BestTutorSite? _site = BestTutorSite.sendSms;
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
                const Text('Enter your mobile number',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0XFF007D95)
                  ),),
                const SizedBox(height: 10,),
                const Text('please enter your phone number . we will send you a 4-digit code to verify your account.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0XFF007D95)
                  ),),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: const Color(0XFF3AB3BC)
                        )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('🇸🇦',
                          style: TextStyle(
                            fontSize: 25
                          ),),
                          Icon(Icons.keyboard_arrow_down,
                          size: 30,
                          color:  Color(0XFF3AB3BC),),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Expanded(child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                              color: const Color(0XFF3AB3BC)
                          )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text('  + 20',
                            style: TextStyle(
                                fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color:  Color(0XFF3AB3BC)

                            ),),
                        ],
                      ),
                    ))
                  ],
                ),
                const SizedBox(height: 10,),
                ListTile(
                  title: const Text('Send Sms'),
                  leading: Radio(
                    value: BestTutorSite.sendSms,
                    groupValue: _site,
                    focusColor: const Color(0XFF3AB3BC),
                activeColor: const Color(0XFF3AB3BC),
                    onChanged: (value) {
                      setState(() {
                        _site = value as BestTutorSite?;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('Call'),
                  leading: Radio(
                    value: BestTutorSite.call,
                    groupValue: _site,
                    onChanged: ( value) {
                      setState(() {
                        _site = value as BestTutorSite?;
                      });
                    },
                  ),
                ),
                Expanded(child: Image.asset('assets/images/phone.png')),
              ],
            ),),
          ButtonIntro(text: 'CONTINUE',onTap: (){
            navigatorTo(context: context, screen: const VerifyScreen());
          },),
        ],
      ),
    );
  }
}
