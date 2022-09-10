

import 'package:flutter/material.dart';

class Header extends StatelessWidget {
   Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return DrawerHeader(
      decoration: const BoxDecoration(
        color:  Color(0XFF4EC1C9),
      ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 42,
              //backgroundColor: Colors.white,
              backgroundImage: const NetworkImage(''),
              onBackgroundImageError:(Object, StackTrace){
                const NetworkImage('',);
              } ,
            ),
            const SizedBox(width: 10,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:const [
                 Text('John Doe',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),),
                Text('San Francisco, CA',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                  ),),
              ],
            )

          ],
        ));
  }
}
