import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/custom_appbar.dart';

import 'package:flutter_application_1/views/coming_soon/widgets/coming_soon_body.dart';

class ComingSoon extends StatefulWidget {
  const ComingSoon({Key? key}) : super(key: key);

  @override
  State<ComingSoon> createState() => _ComingSoonState();
}

class _ComingSoonState extends State<ComingSoon> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: customAppBar(
          color: Colors.black,
          appBarTitle: 'Coming Soon',
        ),
        backgroundColor: Colors.black,
        body: comingSoonBody(context: context),
      ),
    );
  }
}
