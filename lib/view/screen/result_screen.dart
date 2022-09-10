
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:weva/view/widget/drawer/contact_drawer.dart';

import 'education_screen.dart';

class ResultScreen extends StatelessWidget {
   ResultScreen({Key? key}) : super(key: key);
  double value=0.67;
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0XFFF5F5F5),
      appBar: AppBar(
        backgroundColor: const Color(0XFF1BB2BC),
        elevation: 0.0,
      ),
      drawer: ContactDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: size.height*0.5,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(bottom: 30),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(25),
                  bottomLeft: Radius.circular(25)
              ),
              color:  Color(0XFF1BB2BC),

            ),
            child: Center(
              child: Lottie.asset('assets/images/intro.json'),
            ),

          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 15),
              child:   Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircularPercentIndicator(
                    radius: 60,
                    percent: value,
                    center: Text('${(value*100).toInt()} %',
                      style: const  TextStyle(
                          fontSize: 20,
                          color: Color(0XFF4EC1C9),
                          fontWeight: FontWeight.bold

                      ),),
                    animation: true,
                    animationDuration: 1200,
                    lineWidth: 10,
                    backgroundColor:const  Color(0XFFA6CEE3),
                    progressColor: const Color(0XFF4EC1C9),
                    circularStrokeCap: CircularStrokeCap.round,
                    //circularStrokeCap: CircularStrokeCap.square,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(onPressed: (){//navigatorTo(context: context, screen:  EducationScreen());
                      },
                          icon: const Icon(Icons.arrow_forward_ios_outlined,
                            size: 30,
                            color:  Color(0XFF4EC1C9),)),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
