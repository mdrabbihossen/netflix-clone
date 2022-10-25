import 'package:flutter/material.dart';

AppBar customAppBar({
  required String appBarTitle,
  Widget? leading,
  Color? color
}) =>
    AppBar(
      backgroundColor: color,
      elevation: 0,
      title: Text(appBarTitle),
      leading: leading,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.collections_bookmark_outlined,
            color: Colors.white,
            size: 25,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            'assets/images/profile.jpeg',
            width: 30,
            height: 30,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
