import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/json/search_json.dart';


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
      appBar: AppBar(
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
      ),
      body: searchBody(),
    );
  }

  Widget searchBody() {
    return SingleChildScrollView(
      controller: ScrollController(),
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20.0, left: 25),
            child: Text(
              'Top Searches',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          // here is contains some of search items
          Column(
            children: List.generate(
              searchJson.length,
              (index) => Padding(
                padding: const EdgeInsets.only(top: 30.0, bottom: 10),
                child: ListTile(
                  leading: Image.asset(
                    searchJson[index]['img'],
                  ),
                  title: Text(
                    searchJson[index]['title'],
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      ),
                    ),
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
