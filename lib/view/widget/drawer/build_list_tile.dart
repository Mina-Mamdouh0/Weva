

import 'package:flutter/material.dart';

class BuildListTile extends StatelessWidget {
  final String text;
  final IconData icons;
  final Function() onTap;
  const BuildListTile({Key? key,
    required this.text,
    required this.icons,
    required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(text.toUpperCase(),
      style: const TextStyle(
        color: Color(0XFF4EC1C9)
      ),),
      leading:  Icon(icons,
        color:const Color(0XFF4EC1C9),
        size: 27,),
      onTap: onTap,

    );
  }
}
