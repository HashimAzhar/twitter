import 'package:flutter_application_2/pages/nearby_page.dart';

import '../pages/Home_page.dart';
import '../pages/Login_page.dart';
import '../pages/edit_profile_page.dart';
import '../pages/main_page.dart';

class AppRoutes {
  static final Pages = {
    login: (context) => LoginPage(),
    home: (context) => HomePage(),
    main: (context) => MainPage(),
    editPage: (context) => EditProfilePage(),
    nearby: (context) => NearbyPage(),
  };
  static const login = '/';
  static const home = '/home';
  static const main = '/main';
  static const editPage = '/edit_profile_page';
  static const nearby = '/nearby';
}
