import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/root_page/widgets/body.dart';
import 'package:flutter_application_1/views/root_page/widgets/bottomBar.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  State<RootApp> createState() => _RootAppState();
}

// this is main root page where every page stayed
class _RootAppState extends State<RootApp> {
  int activeTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: BottomNavBar(),
      body: getBody(activeTab: activeTab),
    );
  }
}
