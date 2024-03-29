
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Notification Screen',
        style: TextStyle(
            color: Colors.black,
            fontSize: 40,
            fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}
