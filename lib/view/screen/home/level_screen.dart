
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:weva/view/widget/drawer/contact_drawer.dart';
import 'package:weva/view/widget/helper.dart';

import '../showvedio.dart';

class LevelScreen extends StatelessWidget {
  final String level;
  LevelScreen({Key? key,required  this.level}) : super(key: key);

  List<String> list=[
    'Lesson 1',
    'Lesson 2',
    'Lesson 3',
    'Lesson 4',
    'Lesson 5',
    'Lesson 6',
    'Lesson 7',
    'Lesson 8',
    'Lesson 9',
    'Lesson 10',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF1BB2BC),
      appBar: AppBar(
        backgroundColor: const Color(0XFF1BB2BC),
        elevation: 0.0,
      ),
      drawer: ContactDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/images/level.png',
              width: double.infinity,
              height: 150),
          Expanded(
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                   Padding(
                    padding:  const EdgeInsets.symmetric(horizontal: 12.0),
                    child:  Text(level,
                      style: const TextStyle(
                          color:  Color(0XFF1BB2BC),
                          fontWeight: FontWeight.bold,
                          fontSize: 22
                      ),
                    ),
                  ),
                  const Divider(
                    color: Color(0XFFDFEEEC),
                    height: 15,
                    thickness: 3,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: list.length,
                      itemBuilder: (context,index){
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                              leading: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color:  const Color(0XFF1BB2BC),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Center(
                                  child: Icon(FontAwesomeIcons.youtube,color:Colors.white,),
                                ),
                              ),
                              title: Text(list[index],
                                style: const TextStyle(
                                    color: Color(0XFF1BB2BC),
                                    fontSize: 25
                                ),),
                              trailing: const Icon(Icons.arrow_forward_ios_outlined,
                                size: 30,
                                color:  Color(0XFF4EC1C9),),
                              onTap: (){
                                navigatorTo(context: context, screen: const ShowLesson());
                              },
                            ),
                            const Divider(
                              color: Color(0XFFDFEEEC),
                              height: 15,
                              thickness: 3,
                            ),
                          ],
                        );
                      },
                    ),
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
