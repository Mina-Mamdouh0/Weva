
import 'package:flutter/material.dart';

class TextRefactorFiled extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool suffixIcon;

   const TextRefactorFiled({Key? key,
    required this.controller,
    required this.hintText,required this.suffixIcon,
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: TextFormField(
        controller: controller,
        style: const TextStyle(
          color: Colors.black,
        ),
        keyboardType: TextInputType.text,
        validator: (value){
          if(value!.isEmpty){
            return 'Please Enter The $hintText';
          }
        },
        decoration: InputDecoration(
      suffixIcon: suffixIcon?const Icon(Icons.keyboard_arrow_down,color:Color(0XFF3AB3BC),)
          :null,
          hintText: hintText,
          hintStyle: const TextStyle(
              color: Color(0XFF3AB3BC),
            fontWeight: FontWeight.bold,
            fontSize: 16
          ),
           fillColor: Colors.white,
          filled: true,
           border: OutlineInputBorder(
             borderRadius: BorderRadius.circular(30),
             borderSide: const BorderSide(color: Color(0XFF3AB3BC),
             width: 2),
           ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Color(0XFF3AB3BC),
                width: 2),
          ),
          disabledBorder:   OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Color(0XFF3AB3BC),
                width: 2),
          ),
          enabledBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Color(0XFF3AB3BC),
                width: 2),
          ),
          errorBorder:OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: Color(0XFF3AB3BC),
                  width: 2),
          ),
        ),
      ),
    );
  }
}
