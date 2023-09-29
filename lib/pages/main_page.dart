import 'package:flutter/material.dart';
import 'package:flutter_application_2/components/bottom_navigation_item.dart';
import 'package:flutter_application_2/config/app-icons.dart';
import 'package:flutter_application_2/pages/Home_page.dart';
import 'package:flutter_application_2/pages/profile_page.dart';
import 'package:flutter_application_2/styles/app_color.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  menus currentIndex = menus.home;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true, //remove extra margin area and make it transparent
      // appBar: AppBar(
      //   title: Text('Button Navigation Container'),
      // ),
      body: pages[currentIndex.index],
      bottomNavigationBar: MyBottomnavigation(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
      // BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: SvgPicture.asset(
      //         'assets/svg/home.svg',
      //         width: 24, // Adjust the width according to your preference
      //         height: 24, // Adjust the height according to your preference
      //       ),
      //       label: 'Home',
      //     ),

      //     BottomNavigationBarItem(
      //       icon: SvgPicture.asset(
      //         'assets/svg/favourite.svg',
      //         width: 24, // Adjust the width according to your preference
      //         height: 24, // Adjust the height according to your preference
      //       ),
      //       label: 'Favourite',
      //     ),

      //     BottomNavigationBarItem(
      //       icon: SvgPicture.asset(
      //         AppIcons.add,
      //         width: 24, // Adjust the width according to your preference
      //         height: 24, // Adjust the height according to your preference
      //       ),
      //       label: 'Messages',
      //     ),

      //     BottomNavigationBarItem(
      //       icon: SvgPicture.asset(
      //         AppIcons.messages,
      //         width: 24, // Adjust the width according to your preference
      //         height: 24, // Adjust the height according to your preference
      //       ),
      //       label: 'Contacts',
      //     ),

      //     BottomNavigationBarItem(
      //       icon: SvgPicture.asset(
      //         'assets/svg/users.svg',
      //         width: 24, // Adjust the width according to your preference
      //         height: 24, // Adjust the height according to your preference
      //       ),
      //       label: 'Contacts',
      //     ),

      //     //   BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
      //     //   BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'favourite'),
      //   ],//items
      //   currentIndex: currentIndex,
      //   onTap: (index) {
      //     setState(
      //       () {
      //         currentIndex = index;
      //       },
      //     );
      //   },

      //   type: BottomNavigationBarType.fixed,
      //   showUnselectedLabels: false,
      //   showSelectedLabels: false,
      //   backgroundColor: Colors.amber,
      // ),
    );
  }

  final pages = [
    HomePage(),
    Center(
      child: Text('Favourite'),
    ),
    Center(
      child: Text('Add Post'),
    ),
    Center(
      child: Text('Messages'),
    ),
    ProfilePage(),
  ];
}

enum menus {
  home,
  favorite,
  add,
  messages,
  users,
}

class MyBottomnavigation extends StatelessWidget {
  final menus currentIndex;
  final ValueChanged<menus> onTap;
  const MyBottomnavigation({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 87,
      // margin: EdgeInsets.all(24),
      margin: EdgeInsets.only(left: 24, right: 24, bottom: 24),
      // color: Colors.transparent,
      child: Stack(
        children: [
          Positioned(
            //white

            left: 0,
            right: 0,//white box ki hai ye
            top: 17,
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: ButtonNavigationItem(
                        onPressed: () {
                          onTap(menus.home);
                        },
                        icon: AppIcons.home,
                        current: currentIndex,
                        name: menus.home),

                    // IconButton(
                    //   onPressed: () {
                    //     onTap(menus.home);
                    //   },
                    //   icon: SvgPicture.asset(
                    //     AppIcons.home,
                    //     colorFilter: ColorFilter.mode(
                    //       currentIndex == menus.home
                    //           ? Colors.black
                    //           : Colors.black.withOpacity(0.3),
                    //       BlendMode.srcIn,
                    //     ),
                    //   ),
                    // ),
                  ),
                  Expanded(
                    child: ButtonNavigationItem(
                        onPressed: () {
                          onTap(menus.favorite);
                        },
                        icon: AppIcons.favourite,
                        current: currentIndex,
                        name: menus.favorite),

                    //  IconButton(
                    //   onPressed: () {
                    //     onTap(menus.favorite);
                    //   },
                    //   icon: SvgPicture.asset(
                    //     AppIcons.favourite,
                    //     colorFilter: ColorFilter.mode(
                    //       currentIndex == menus.favorite
                    //           ? Colors.black
                    //           : Colors.black.withOpacity(0.3),
                    //       BlendMode.srcIn,
                    //     ),
                    //   ),
                    // ),
                  ),
                  Spacer(),
                  Expanded(
                    child: ButtonNavigationItem(
                        onPressed: () {
                          onTap(menus.messages);
                        },
                        icon: AppIcons.messages,
                        current: currentIndex,
                        name: menus.messages),

                    // IconButton(
                    //   onPressed: () {
                    //     onTap(menus.messages);
                    //   },
                    //   icon: SvgPicture.asset(
                    //     AppIcons.messages,
                    //     colorFilter: ColorFilter.mode(
                    //       currentIndex == menus.messages
                    //           ? Colors.black
                    //           : Colors.black.withOpacity(0.3),
                    //       BlendMode.srcIn,
                    //     ),
                    //   ),
                    // ),
                  ),
                  Expanded(
                    child: ButtonNavigationItem(
                        onPressed: () {
                          onTap(menus.users);
                        },
                        icon: AppIcons.users,
                        current: currentIndex,
                        name: menus.users),
                    //  IconButton(
                    //   onPressed: () {
                    //     onTap(menus.users);
                    //   },
                    //   icon: SvgPicture.asset(
                    //     AppIcons.users,
                    //     colorFilter: ColorFilter.mode(
                    //       currentIndex == menus.users
                    //           ? Colors.black
                    //           : Colors.black.withOpacity(0.3),
                    //       BlendMode.srcIn,
                    //     ),
                    //   ),
                    // ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: GestureDetector(
              onTap: () {
                onTap(menus.add);
              },
              child: Container(
                height: 64,
                width: 64,
                padding: EdgeInsets.all(18),
                decoration: BoxDecoration(
                    color: AppColors.primary, shape: BoxShape.circle),
                child: SvgPicture.asset(AppIcons.add),
              ),
            ),
          )
        ],
      ),
    );
  }
}
