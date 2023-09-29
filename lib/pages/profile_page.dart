import 'package:flutter/material.dart';
import 'package:flutter_application_2/components/tool_bar.dart';
import 'package:flutter_application_2/components/user_avatar.dart';
import 'package:flutter_application_2/styles/app_color.dart';
import 'package:flutter_application_2/styles/app_text.dart';

enum ProfileMenu {
  Edit,
  LogOut,
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolBar(
        title: 'Profile',
        actions: [
          PopupMenuButton<ProfileMenu>(
            onSelected: (value) {
              switch (value) {
                case ProfileMenu.Edit:
                  // print('Edit');
                  Navigator.of(context).pushNamed('/edit_profile_page');
                  break;
                case ProfileMenu.LogOut:
                  print('Log Out');
                  break;
                default:
              }
            },
            icon: Icon(Icons.more_vert_outlined),
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text('Edit'),
                  value: ProfileMenu.Edit,
                ),
                PopupMenuItem(
                  child: Text('Log Out'),
                  value: ProfileMenu.LogOut,
                ),
              ];
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Container(
          //   padding: const EdgeInsets.all(1),
          //   decoration: BoxDecoration(
          //     color: Colors.lightBlue[100],
          //     borderRadius: BorderRadius.all(
          //       Radius.circular(70),
          //     ),
          //   ),
            // child: Image.asset(
            //   'assets/temp/Post1.png',
            //   width: 90,
            //   height: 90,
            // ),
          // ),


          // ClipRRect(
          //   borderRadius: BorderRadius.all(Radius.circular(50)),
          //     child: Image.asset(
          //     'assets/temp/tomcruise.png',
          //     width: 90,
          //     height: 90,
          //   ),
          // ),

          UserAwatar(size: 90,),

          SizedBox(
            height: 10,
          ),
          Align(
              // alignment: Alignment.centerLeft,
              child: Text('Tom Cruise', style: AppText.header2)),
          SizedBox(
            height: 12,
          ),
          Align(
            // alignment: Alignment.centerLeft,
            child: Text(
              'USA',
              style: AppText.subTitle3,
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    '472',
                    style: AppText.header2,
                  ),
                  Text('Followers'),
                ],
              ),
              // SizedBox(width: 22,),
              Column(
                children: [
                  Text(
                    '119',
                    style: AppText.header2,
                  ),
                  Text('Post'),
                ],
              ),

              // SizedBox(width: 22,),
              Column(
                children: [
                  Text(
                    '100',
                    style: AppText.header2,
                  ),
                  Text('Following'),
                ],
              ),
            ],
          ),
          Divider(
            thickness: 1,
            height: 24,
          ),
        ],
      ),
    );
  }
}
