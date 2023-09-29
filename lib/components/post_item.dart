import 'package:flutter/material.dart';

import '../styles/app_text.dart';

class PostItem extends StatelessWidget {
  final String user;
  const PostItem({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/temp/tomcruise.png',
                width: 40,
                height: 40,
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                user,
                style: AppText.subTitle3,
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Image.asset('assets/temp/Post1.png'),
          SizedBox(
            height: 5,
          ),
          Text(
            'The Sun is a Daily Reminder that we too can rise from the darkness,That we can shine our own light',
            style: AppText.subTitle3,
          ),
        ],
      ),
    );
  }
}
