import 'package:flutter/material.dart';

Widget customButton(
        {required IconData icon,
        Color? iconColor,
        required String buttonText,
        Color? btnColor,textColor,
        required double height}) =>
    ElevatedButton(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          primary: btnColor,
          minimumSize: Size(
            double.infinity,
            height,
          )),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: iconColor,
          ),
          SizedBox(width: 5),
          Text(
            buttonText,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
