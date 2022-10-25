import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/json/search_json.dart';
import 'package:flutter_application_1/views/search/widgets/search_bar.dart';
import 'package:flutter_application_1/views/search/widgets/search_body.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // Appbar
      appBar: searchBar,
      body: searchBody(context: context),
    );
  }
}
