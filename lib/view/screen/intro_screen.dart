
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:weva/model/modelonboardind.dart';
import 'package:weva/view/widget/buttons.dart';
import 'package:weva/view/widget/helper.dart';

import 'info_screen.dart';


class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  var controller=PageController();
  bool isLast=false;

  List<ModelOnBoarding> modelOnBoarding=[
    ModelOnBoarding(image: 'assets/images/introone.png', title: 'welcome to weva \n A platform to learn English differently from any other method',),
    ModelOnBoarding(image: 'assets/images/introtwo.png', title: 'Through the weva platform, you can learn and reap valuable guidance. All you have to do is learn, and through the exam, you earn points and turn points into guidance.', ),
    ModelOnBoarding(image: 'assets/images/introthree.png', title: 'Through the Wifa platform, you can learn in a different way through videos, and to ensure that you learned well, there is an exam after each video and level', ),
    ModelOnBoarding(image: 'assets/images/introfour.png', title: 'After each exam, you get some points, and then they can be exchanged for guidance according to the terms and conditions set by the WEVA program.', ),
  ];

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: size.height*0.8,
            decoration: const BoxDecoration(
              color: Color(0XFFECF6FF),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(40),
                bottomLeft: Radius.circular(40)
              ),
            ),
            child: PageView.builder(
                onPageChanged: (index){
                  if(index==modelOnBoarding.length-1){
                    setState(() {
                      isLast=true;
                    });
                  }else{
                    setState(() {
                      isLast=false;
                    });
                  }
                },
                controller: controller,
                physics:const BouncingScrollPhysics(),
                itemCount:modelOnBoarding.length ,
                itemBuilder: (context,index)=>buildOnBoarding(modelOnBoarding[index],)),
          ),
          const Spacer(),
          SmoothPageIndicator(controller: controller,
            count: modelOnBoarding.length,
            effect:const  ExpandingDotsEffect(
                activeDotColor: Color(0XFF3AB3BC),
                dotHeight: 10,
                dotWidth: 15,
                dotColor: Color(0XFFBCE0FD),
            ),),

           ButtonIntro(text: 'next',onTap: (){
             if(isLast){
               navigatorAndRemove(context: context,widget: const InfoScreen());
             }
             else{
               controller.nextPage(
                   duration:const  Duration(milliseconds: 500),
                   curve:Curves.easeInToLinear);
             }
           },)
        ],
      ),
    );
  }
  Widget buildOnBoarding(ModelOnBoarding model){
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
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
          Text(model.title,
            textAlign: TextAlign.center,
            style:const TextStyle(fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Color(0XFF007D95)
            ),),
          Expanded(child: Image.asset(model.image,fit: BoxFit.fill,
          scale: 1,)),
        ],
      ),
    );
  }
}
