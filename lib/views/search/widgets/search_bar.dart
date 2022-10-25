import 'package:flutter/material.dart';

AppBar get searchBar => AppBar(
      elevation: 0,
      backgroundColor: Colors.black,
      title: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Container(
          height: 42,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.25),
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.search,
                color: Colors.white.withOpacity(0.5),
              ),
              hintText: 'Search',
              hintStyle: TextStyle(
                color: Colors.white.withOpacity(0.5),
              ),
            ),
          ),
        ),
      ),
    );
