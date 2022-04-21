import 'package:flutter/material.dart';
import 'package:flutter_application_1/json/root_app_json.dart';
import 'package:flutter_application_1/pages/coming_soon_page.dart';
import 'package:flutter_application_1/pages/downloads_page.dart';
import 'package:flutter_application_1/pages/homepage.dart';
import 'package:flutter_application_1/pages/search_page.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int activeTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: getFooter(),
      body: getBody(),
    );
  }

  Widget getBody() {
    return IndexedStack(index: activeTab, children: const [
      HomePage(),
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

  Widget getFooter() {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.black,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              items.length,
              (index) => GestureDetector(
                onTap: () => setState(() => activeTab = index),
                child: Column(
                  children: [
                    Icon(
                      items[index]["icon"],
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      items[index]["text"],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
