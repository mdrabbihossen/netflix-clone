import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/coming_soon/screens/coming_soon_page.dart';
import 'package:flutter_application_1/views/downloads/screens/downloads_page.dart';
import 'package:flutter_application_1/views/home/screens/home_screen.dart';
import 'package:flutter_application_1/views/search/screens/search_page.dart';

Widget getBody({required int activeTab}) {
  return IndexedStack(index: activeTab, children: const [
    HomeScreen(),
    ComingSoon(),
    SearchPage(),
    DownloadPage(),
    Center(
      child: Text(
        "Profile",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    ),
  ]);
}