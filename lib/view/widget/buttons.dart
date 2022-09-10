

import 'package:flutter/material.dart';

class ButtonIntro extends StatelessWidget {
  final Function() onTap;
  final String text;
  const ButtonIntro({Key? key,required this.onTap,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          height: 50,
          padding: const EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
            color: const Color(0XFF3AB3BC),
            borderRadius: BorderRadius.circular(30),
          ),
          child:  Center(
            child: Text(text.toUpperCase(),
            style: const TextStyle(
              color:  Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),),
          ),
        ),
      ),
    );
  }
}
