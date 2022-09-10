
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:weva/view/widget/helper.dart';

import '../education_screen.dart';



class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);
  double value=0.67;
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 20),
            child: TextFormField(
              controller: TextEditingController(),
              style: const TextStyle(
                color: Colors.black,
              ),
              keyboardType: TextInputType.text,
              validator: (value){
                if(value!.isEmpty){
                  return 'Please Enter The Search';
                }
              },
              decoration: InputDecoration(
                suffixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Icon(FontAwesomeIcons.youtube,color:Colors.grey,),
                      SizedBox(width: 8),
                      Icon(Icons.person,color:Color(0XFF4EC1C9),),
                    ],
                  ),
                ),
                hintText: 'Search',
                prefixIcon: const Icon(Icons.search,
                  color: Colors.grey,),
                hintStyle: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 16
                ),
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(color: Colors.white,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(color: Colors.white,
                  ),
                ),
                disabledBorder:   OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(color: Colors.white,
                  ),
                ),
                enabledBorder:  OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(color: Colors.white,
                  ),
                ),
                errorBorder:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 250,
            margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const[
                     Icon(Icons.list,size: 40,color: Color(0XFF4EC1C9,)),
                    SizedBox(width: 10,),
                    Text('Education ',
                    style: TextStyle(
                      color: Color(0XFF4EC1C9,),
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    ),)
                  ],
                ),
                const Divider(
                  color: Color(0XFFDFEEEC),
                  height: 15,
                  thickness: 3,
                ),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                  CircularPercentIndicator(
                    radius: 40,
                    percent: value,
                    center: Text('${(value*100).toInt()} %',
                    style: const  TextStyle(
                      fontSize: 20,
                      color: Color(0XFF4EC1C9),
                      fontWeight: FontWeight.bold

                    ),),
                    animation: true,
                    animationDuration: 1200,
                    lineWidth: 8,
                    backgroundColor:const  Color(0XFFA6CEE3),
                    progressColor: const Color(0XFF4EC1C9),
                    circularStrokeCap: CircularStrokeCap.round,
                    //circularStrokeCap: CircularStrokeCap.square,
                  ),
                  const SizedBox(width: 15,),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:const [
                             Text('4/4',
                            style: TextStyle(
                              color: Color(0XFF4EC1C9),
                              fontSize: 15
                            ),),
                             Text('100%',
                            style: TextStyle(
                              color: Color(0XFF4EC1C9),
                              fontSize: 15
                            ),),
                          ],
                        ),
                        Container(
                          width: double.infinity,
                          height: 5,
                          decoration: BoxDecoration(
                            color:  const Color(0XFF4EC1C9),
                            borderRadius: BorderRadius.circular(5)
                          ),
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:const [
                             Text('4/4',
                            style: TextStyle(
                              color: Color(0XFF4EC1C9),
                              fontSize: 15
                            ),),
                             Text('100%',
                            style: TextStyle(
                              color: Color(0XFF4EC1C9),
                              fontSize: 15
                            ),),
                          ],
                        ),
                        Container(
                          width: double.infinity,
                          height: 5,
                          decoration: BoxDecoration(
                              color:  const Color(0XFF4EC1C9),
                              borderRadius: BorderRadius.circular(5)
                          ),
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(onPressed: (){
                              navigatorTo(context: context, screen:  EducationScreen());
                            },
                                icon: const Icon(Icons.arrow_forward_ios_outlined,
                                size: 30,
                                    color:  Color(0XFF4EC1C9),))
                          ],
                        )
                      ],
                    ),
                  )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 250,
            margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const[
                    Icon(Icons.call,size: 40,color: Color(0XFF4EC1C9,)),
                    SizedBox(width: 10,),
                    Text('Call ',
                      style: TextStyle(
                          color: Color(0XFF4EC1C9,),
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                      ),)
                  ],
                ),
                const Divider(
                  color: Color(0XFFDFEEEC),
                  height: 15,
                  thickness: 3,
                ),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(onPressed: (){},
                          icon: const Icon(Icons.arrow_forward_ios_outlined,
                            size: 30,
                            color:  Color(0XFF4EC1C9),))
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
