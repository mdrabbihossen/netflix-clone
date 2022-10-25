import 'package:flutter/material.dart';

AppBar get appBar => AppBar(
      elevation: 0,
      backgroundColor: Colors.black,
      title: Text(
        'Coming Soon',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
      ),
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
