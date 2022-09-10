
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void navigatorTo({required BuildContext context,
  required Widget screen,
}){
  Navigator.push(context, MaterialPageRoute(builder: (_)=>screen));
}


navigatorAndRemove({
  required BuildContext context,
  required Widget widget,
}){
  Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context)=>widget), (route) => false);
}