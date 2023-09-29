import 'package:flutter/material.dart';
import 'package:flutter_application_2/styles/app_text.dart';

import '../styles/app_color.dart';

class ToolBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;

  const ToolBar({super.key, required this.title, this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: AppText.header1,
      ),
      centerTitle:
          false, //ye center se hatany k liye hota mera bu default hi side pe hai abih
      backgroundColor: AppColors.background,
      // elevation: 0,//ye 1 line hoti hai
      // actions: [Icon(Icons.location_on_outlined),],
      actions: actions,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(60); //ye appbar ka size hai
}
