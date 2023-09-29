import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/main_page.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../config/app-icons.dart';

class ButtonNavigationItem extends StatelessWidget {
  final VoidCallback onPressed;
  final String icon;
  final menus current;
  final menus name;
  const ButtonNavigationItem(
      {super.key,
      required this.onPressed,
      required this.icon,
      required this.current,
      required this.name});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: SvgPicture.asset(
        icon,
        colorFilter: ColorFilter.mode(
          current == name
              ? Colors.black
              : Colors.black.withOpacity(0.3),
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
