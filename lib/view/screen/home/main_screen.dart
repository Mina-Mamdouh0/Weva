
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weva/view/screen/home/home_screen.dart';
import 'package:weva/view/screen/home/notifications_screen.dart';
import 'package:weva/view/screen/home/person_screen.dart';
import 'package:weva/view/screen/home/setting_screen.dart';
import 'package:weva/view/widget/drawer/contact_drawer.dart';



class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex=0;

  List<Widget> screens= [
    HomeScreen(),
    const  NotificationScreen(),
    const PersonScreen(),
    const SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0XFFDFEEEC),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0XFF4EC1C9),
          foregroundColor: Colors.white,
          actions:  [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Switch(
                    activeTrackColor: Colors.white,
                    activeColor: const Color(0XFF4EC1C9),
                    value: true,
                    onChanged: (value) {
                    },
                  ),
                ),
                const Padding(
                  padding:  EdgeInsets.all(2.0),
                  child:  Text('Online',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold
                  ),),
                )
              ],

            )

          ],
          title: const Text('WEVA',style: TextStyle(
            fontSize: 25,
            color: Colors.white
          ),),
          centerTitle: true,
        ),
        drawer:  ContactDrawer(),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex:currentIndex ,
          type: BottomNavigationBarType.fixed,
          items: const [
             BottomNavigationBarItem(
              activeIcon:  Icon(
                Icons.list,
                color:  Color(0XFF4EC1C9),
              ),
              icon: Icon(
                Icons.list,
                color: Color(0XFF0441E8),
              ),
              label: '',
            ),
             BottomNavigationBarItem(
              activeIcon:  Icon(
                Icons.notifications,
                color:  Color(0XFF4EC1C9),
              ),
              icon: Icon(
                Icons.notifications,
                color: Color(0XFF0441E8),
              ),
              label: '',
            ),
             BottomNavigationBarItem(
              activeIcon:  Icon(
                Icons.person,
                color:  Color(0XFF4EC1C9),
              ),
              icon: Icon(
                Icons.person,
                color: Color(0XFF0441E8),
              ),
              label: '',
            ),
             BottomNavigationBarItem(
              activeIcon:  Icon(
                Icons.settings,
                color:  Color(0XFF4EC1C9),
              ),
              icon: Icon(
                Icons.settings,
                color: Color(0XFF0441E8),
              ),
              label: '',
            ),
          ],
          onTap: (index) {
setState(() {
   currentIndex=index;
});
          },
        ),
        body: screens[currentIndex],
      )
    );
  }
}
