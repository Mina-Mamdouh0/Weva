
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'build_list_tile.dart';
import 'header_drawer.dart';

class ContactDrawer extends StatelessWidget {
   ContactDrawer({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {


    return Drawer(
      backgroundColor: const Color(0XFFCBF0EB),
      child: SingleChildScrollView(
        child: Column(
          children:  [
              Header(),
            BuildListTile(
              text: 'feed',
              icons: Icons.list,
              onTap: (){},
            ),
            const Divider(
              color: Color(0XFF25C1CC),
              height: 15,
              indent: 2,
              thickness: 1,

            ),
            BuildListTile(
              text: '',
              icons: Icons.watch_later_rounded,
              onTap: (){},
            ),
            const Divider(
              color: Color(0XFF25C1CC),
              height: 15,
              indent: 2,
              thickness: 1,

            ),
            BuildListTile(
              text: 'MESSAGES',
              icons: Icons.message,
              onTap: (){

              },
            ),
            const Divider(
              color: Color(0XFF25C1CC),
              height: 15,
              indent: 2,
              thickness: 1,

            ),
            BuildListTile(
              text: 'NOTIFICATIONS',
              icons: Icons.notifications,
              onTap: (){},
            ),
            const Divider(
              color: Color(0XFF25C1CC),
              height: 15,
              indent: 2,
              thickness: 1,

            ),
            BuildListTile(
              text: 'VIDEOS',
              icons: Icons.video_call,
              onTap: (){},
            ),
            const Divider(
              color: Color(0XFF25C1CC),
              height: 15,
              indent: 2,
              thickness: 1,

            ),
            BuildListTile(
              text: 'PLACES',
              icons: Icons.place,
              onTap: (){},
            ),
            const Divider(
              color: Color(0XFF25C1CC),
              height: 15,
              indent: 2,
              thickness: 1,

            ),
            BuildListTile(
              text: 'SETTINGS',
              icons: Icons.settings,
              onTap: (){},
            ),
            const Divider(
              color: Color(0XFF25C1CC),
              height: 15,
              indent: 2,
              thickness: 1,

            ),
            BuildListTile(
              text: 'SEARCH',
              icons: Icons.search,
              onTap: (){},
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(onPressed: (){},
                      icon: const Icon(FontAwesomeIcons.facebook,
                      size: 30,
                      color:  Color(0XFF4EC1C9),)),
                  IconButton(onPressed: (){},
                      icon: const Icon(FontAwesomeIcons.instagram,
                      size: 30,
                      color:  Color(0XFF4EC1C9),)),
                  IconButton(onPressed: (){},
                      icon: const Icon(FontAwesomeIcons.twitter,
                      size: 30,
                      color:  Color(0XFF4EC1C9),)),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
