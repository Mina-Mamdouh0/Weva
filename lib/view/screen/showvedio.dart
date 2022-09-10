
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weva/view/widget/drawer/contact_drawer.dart';
import 'package:weva/view/widget/helper.dart';

import 'exam_screen.dart';

class ShowLesson extends StatelessWidget {
  const ShowLesson({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF5F5F5),
        appBar: AppBar(
          backgroundColor: const Color(0XFF1BB2BC),
          elevation: 0.0,
        ),
        drawer: ContactDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 250,
              margin: const EdgeInsets.symmetric(horizontal: 30,vertical: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.teal,
                border: Border.all(
                  color: Colors.white,
                  width: 5
                )
              ),
              child: Center(
                child: Container(
                  height: 50,width: 50,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.play_arrow,
                      size: 50,
                      color:  Color(0XFF1BB2BC),
                    ),
                  ),
                ),
              ),

            ),
            Container(
              width: double.infinity,
              height: 250,
              margin: const EdgeInsets.symmetric(horizontal: 30,vertical: 15),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft:  Radius.circular(30),
                  bottomRight:  Radius.circular(30),
                  topRight:  Radius.circular(30),
                ),
                color: Colors.white,
                border: Border.all(
                  color: Colors.white,
                  width: 5
                )
              ),
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  color: const Color(0XFF25C1CC),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Icon(Icons.file_copy,color: Colors.white,size: 30,),
                      SizedBox(width: 10,),
                      Text('Note',style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                ),
              )

            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
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
                          height: 5,
                          decoration: BoxDecoration(
                              color:  const Color(0XFF4EC1C9),
                              borderRadius: BorderRadius.circular(5)
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      navigatorTo(context: context, screen: const ExamScreen());
                    },
                    child: Container(
                      width: 60,
                      height: 50,
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0XFF1BB2BC),
                      ),
                       child:const  Center(
                         child: Icon(Icons.arrow_forward_ios_outlined,
                         size: 25,color: Colors.white,),
                       ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
