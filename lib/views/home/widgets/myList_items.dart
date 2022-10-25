import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/json/home_json.dart';

Widget myListItems() => SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Row(
          children: List.generate(
            mylist.length,
            (index) => Container(
              margin: EdgeInsets.only(left: 8),
              width: 110,
              height: 160,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    mylist[index]['img'],
                  ),
                ),
                borderRadius: BorderRadius.circular(6),
              ),
            ),
          ),
        ),
      ),
    );
