
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:weva/model/education_model.dart';
import 'package:weva/view/widget/drawer/contact_drawer.dart';
import 'package:weva/view/widget/helper.dart';

import 'home/level_screen.dart';

class EducationScreen extends StatelessWidget {
   EducationScreen({Key? key}) : super(key: key);

  List<Education> list=[
    Education(num: '1',text: 'Level 1'),
    Education(num: '2',text: 'Level 2'),
    Education(num: '3',text: 'Level 3'),
    Education(num: '4',text: 'Level 4'),
    Education(num: '5',text: 'Level 5'),
    Education(num: '6',text: 'Level 6'),
    Education(num: '7',text: 'Level 7'),
    Education(num: '8',text: 'Level 8'),
    Education(num: '9',text: 'Level 9'),
    Education(num: '10',text: 'Level 10'),
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
          Image.asset('assets/images/education.png',
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
                  const Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 12.0),
                    child:  Text('Education ',
                      style: TextStyle(
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
                                child: Center(
                                  child: Text(list[index].num,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 25
                                  ),),
                                ),
                              ),
                              title: Text(list[index].text,
                                style: const TextStyle(
                                    color: Color(0XFF1BB2BC),
                                    fontSize: 25
                                ),),
                              trailing: const Icon(Icons.arrow_forward_ios_outlined,
                                size: 30,
                                color:  Color(0XFF4EC1C9),),
                              onTap: (){
                                navigatorTo(context: context, screen: LevelScreen(level: list[index].text,));
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
