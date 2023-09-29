import 'package:flutter/material.dart';
import 'package:flutter_application_2/config/app_routes.dart';
import 'package:flutter_application_2/pages/Home_page.dart';
import 'package:flutter_application_2/pages/Login_page.dart';
import 'package:flutter_application_2/pages/Test_page.dart';
import 'package:flutter_application_2/pages/edit_profile_page.dart';
import 'package:flutter_application_2/pages/main_page.dart';
import 'package:flutter_application_2/styles/app_color.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Urbanist',
        scaffoldBackgroundColor: AppColors.background,
        brightness: Brightness.dark,
      ),
      // home:TestPage(),
      //       OR        //
      // initialRoute: '/',
      initialRoute: AppRoutes.login,
      // routes: {
      //   '/': (context) => LoginPage(),
      //   '/home': (context) => HomePage(),
      //   '/main':(context) => MainPage(),
      //   '/edit_page':(context) => EditProfilePage(),
      // },
      routes: AppRoutes.Pages,
    );
  }
}
