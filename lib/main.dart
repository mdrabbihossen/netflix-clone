import 'package:flutter/material.dart';

import 'package:flutter_application_1/views/root_page/root_app_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: RootApp(),
    );
  }
}
