import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserAwatar extends StatelessWidget {
  final double size;
  const UserAwatar({super.key,  this.size = 40});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(50)),
      child: Image.asset(
        'assets/temp/tomcruise.png',
        width: size,
        height: size,
      ),
    );
  }
}
