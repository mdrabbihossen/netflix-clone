import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/custom_appbar.dart';
import 'package:flutter_application_1/models/json/home_json.dart';
import 'package:flutter_application_1/views/home/widgets/anime_items.dart';
import 'package:flutter_application_1/views/home/widgets/homepage_banner_category.dart';
import 'package:flutter_application_1/views/home/widgets/movie_title.dart';
import 'package:flutter_application_1/views/home/widgets/myList_items.dart';
import 'package:flutter_application_1/views/home/widgets/netflix_originals.dart';
import 'package:flutter_application_1/views/home/widgets/popular_netflix.dart';
import 'package:flutter_application_1/views/home/widgets/trending_noew.dart';
import 'package:flutter_application_1/views/video_details/screens/video_details_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: customAppBar(
        color: Colors.transparent,
        appBarTitle: '',
        leading: Image.asset(
          'assets/images/logo.ico',
          height: 30,
          width: 30,
        ),
      ),
      body: homePageBody(),
    );
  }

  Widget homePageBody() {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: size.height - 80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      // homepage body banner page
                      Container(
                        height: 500,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/banner.webp',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        height: 500,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.black.withOpacity(0.86),
                              Colors.black.withOpacity(0.0),
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                      ),
                      // homepage body banner end
                      // homepage body title
                      SizedBox(
                        height: 500,
                        width: size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/title_img.webp',
                              width: 300,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Exiting Sci-fi Drama - Sci-fi Adventure',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 11),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  // homepage body title end
                  SizedBox(
                    height: 15,
                  ),
                  // homepage body list
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: const [
                          Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 25,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'My List',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => VideoDetailScreen(
                                  videoUrl: 'assets/videos/video_1.mp4'),
                            ),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.only(
                              left: 8, right: 13, top: 5, bottom: 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            children:  [
                              Icon(
                                Icons.play_arrow,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Play',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        children: const [
                          Icon(
                            Icons.info_outline,
                            color: Colors.white,
                            size: 25,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Info',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // My List Items
                      movieTitle(movieTitle: 'My List'),
                      SizedBox(height: 15),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => VideoDetailScreen(
                                  videoUrl: 'assets/videos/video_2.mp4'),
                            ),
                          );
                        },
                        child: myListItems(),
                      ),
                      // My List Items end
                      SizedBox(height: 30),
                      // Popular on netflix items
                      movieTitle(movieTitle: 'Popular on Netflix'),
                      SizedBox(height: 15),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => VideoDetailScreen(
                                  videoUrl: 'assets/videos/video_1.mp4'),
                            ),
                          );
                        },
                        child: popularOnNetflixItems(),
                      ),
                      // Popular on netflix items end
                      SizedBox(height: 30),
                      // Trending Now items
                      movieTitle(movieTitle: 'Trending Now'),
                      SizedBox(height: 15),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => VideoDetailScreen(
                                  videoUrl: 'assets/videos/video_1.mp4'),
                            ),
                          );
                        },
                        child: trendingNowItems(),
                      ),
                      // Trending Now items end
                      SizedBox(height: 30),
                      // Netflix original items
                      movieTitle(movieTitle: 'Netflix Original'),
                      SizedBox(height: 15),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => VideoDetailScreen(
                                  videoUrl: 'assets/videos/video_2.mp4'),
                            ),
                          );
                        },
                        child: netflixOriginalItems(),
                      ),
                      // Netflix original items end
                      SizedBox(height: 30),
                      // Anime items
                      movieTitle(movieTitle: 'Anime'),
                      SizedBox(height: 15),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => VideoDetailScreen(
                                  videoUrl: 'assets/videos/video_1.mp4'),
                            ),
                          );
                        },
                        child: animeItems(),
                      ),
                      // Anime items end
                      SizedBox(height: 30),
                    ],
                  ),
                ],
              ),
            ),
            HomePageBannerCategory(),
          ],
        ),
      ),
    );
  }
}
