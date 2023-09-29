import 'package:flutter/material.dart';
import 'package:flutter_application_2/components/post_item.dart';
import 'package:flutter_application_2/components/tool_bar.dart';
import 'package:flutter_application_2/config/app_routes.dart';
import 'package:flutter_application_2/styles/app_color.dart';
import 'package:flutter_application_2/styles/app_text.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  // const HomePage({super.key});
  HomePage({super.key});

  List<String> users = [];

  @override
  Widget build(BuildContext context) {
    mockUsersFromServer();
    return Scaffold(
      appBar: ToolBar(
        
        title: '5MinuteFlutter',
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.nearby);
            },
            icon: SvgPicture.asset('assets/svg/Location3.svg'),
          )
          // color: AppColors.white,
        ],
      ),
         drawer: Container(
        width: 400,
        height: 500,
        color: Colors.blue[200],
      ),

// title: Center(child: Text('5MinuteFltter')),//ye center me align krny k liye hai but its not needed for now

      // body: SingleChildScrollView(child: Column(children: mockUsersFromServer()),),  (its use not recomended coz its slow)
      // body: ListView(children: mockUserssFromServer(),),//

      // body: ListView.builder(
      //   itemBuilder: (context, index) {
      //     return PostItem(user: users[index],);
      //   },
      // ),

      body: ListView.separated(
        itemBuilder: (context, index) {
          return PostItem(
            user: users[index],
          );
        },
        itemCount: users.length,
        separatorBuilder: (BuildContext context, int index) {
          return Container(
            height: 20,
            width: 1,
            // color: Colors.grey,
          );
        },
        
      ),
    );
  }

  // Widget _userItem() {
  // return Row(
  //     children: [
  //       Image.asset(
  //         'assets/temp/tomcruise.png',
  //         width: 40,
  //         height: 40,
  //       ),
  //       SizedBox(
  //         width: 16,
  //       ),
  //       Text(
  //         'Tom Cruise',
  //         style: AppText.subTitle3,
  //       ),
  //     ],
  //   );
  // }

  // List<Widget> mockUsersFromServer() {
  //   List<Widget> users = [];
  //   for (var i = 0; i < 500; i++) {
  //     users.add(_userItem());//es ka taluq uper waly k sath tha jisy me ne comment out kr diy

  //     }
  //   return users;
  // }

  mockUsersFromServer() {
    for (var i = 0; i < 100; i++) {
      users.add('User Number $i');
    }
    return users;
  }
}
