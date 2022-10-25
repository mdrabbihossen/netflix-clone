import 'package:flutter/material.dart';

Widget movieTitle({required String movieTitle}) => Padding(
      padding: EdgeInsets.only(left: 18.0),
      child: Text(
        movieTitle,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
