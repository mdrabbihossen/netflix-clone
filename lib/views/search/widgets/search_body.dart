import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/json/search_json.dart';
import 'package:flutter_application_1/views/video_details/screens/video_details_screen.dart';

Widget searchBody({required BuildContext context}) => SingleChildScrollView(
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
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VideoDetailScreen(
                          videoUrl: 'assets/videos/video_1.mp4',
                        ),
                      ),
                    );
                  },
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
