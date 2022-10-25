import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/custom_appbar.dart';
import 'package:flutter_application_1/models/json/video_detail_json.dart';
import 'package:flutter_application_1/views/video_details/widgets/custom_btn.dart';
import 'package:video_player/video_player.dart';

class VideoDetailScreen extends StatefulWidget {
  final String videoUrl;

  const VideoDetailScreen({
    Key? key,
    required this.videoUrl,
  }) : super(key: key);

  @override
  State<VideoDetailScreen> createState() => _VideoDetailScreenState();
}

class _VideoDetailScreenState extends State<VideoDetailScreen> {
  VideoPlayerController? controller;
  int activeEpisode = 0;

  @override
  void initState() {
    // implement initState
    super.initState();
    controller = VideoPlayerController.asset(widget.videoUrl)
      ..initialize().then((value) {
        setState(() {
          controller?.play();
        });
      });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: customAppBar(
        color: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
        appBarTitle: '',
      ),
      body: Container(
        width: size.width,
        height: size.height,
        child: Column(
          children: [
            // video
            Container(
              height: 220,
              child: Stack(
                children: [
                  VideoPlayer(controller!),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(.2),
                    ),
                  ),
                  Center(
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          controller!.value.isPlaying
                              ? controller!.pause()
                              : controller!.play();
                        });
                      },
                      icon: Icon(
                        controller!.value.isPlaying ? null : Icons.play_arrow,
                        size: 50,
                      ),
                    ),
                  ),
                  // preview
                  Positioned(
                    left: 5,
                    bottom: 20,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 13, vertical: 8),
                        child: Row(
                          children: [
                            Text(
                              'Preview',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // sound
                  Positioned(
                    right: 5,
                    bottom: 20,
                    child: Container(
                      width: 25,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.volume_mute,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // video end
            SizedBox(height: 10),
            // video title description
            Container(
              height: size.height - 330,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Age of Sumuria: Battle for Japan',
                        style: TextStyle(
                            fontSize: 28,
                            height: 1.4,
                            color: Colors.white.withOpacity(.9),
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            "New",
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          SizedBox(width: 15),
                          Text(
                            "2021",
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                                fontWeight: FontWeight.w500,
                                fontSize: 15),
                          ),
                          SizedBox(width: 15),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: Colors.white.withOpacity(0.2)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 6,
                                vertical: 4,
                              ),
                              child: Text(
                                "18+",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12),
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                          Text(
                            "1 Season",
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                                fontWeight: FontWeight.w500,
                                fontSize: 15),
                          ),
                          SizedBox(width: 15),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              border: Border.all(
                                width: 2,
                                color: Colors.white.withOpacity(0.2),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 4,
                                vertical: 2,
                              ),
                              child: Text(
                                "HD",
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.6),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Text(
                        "Watch Season 1 Now",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.9),
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                        ),
                      ),
                      SizedBox(height: 12),
                      customButton(
                          icon: Icons.play_arrow,
                          buttonText: 'Resume',
                          height: size.height * 0.07,
                          btnColor: Colors.white,
                          iconColor: Colors.black,
                          textColor: Colors.black),
                      SizedBox(height: 12),
                      customButton(
                        icon: Icons.file_download,
                        buttonText: 'Download',
                        height: size.height * 0.07,
                        btnColor: Colors.black,
                        iconColor: Colors.white,
                      ),
                      SizedBox(height: 20),
                      Text(
                        "S1:E1 The Rise of Nobunaga",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.9),
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: (size.width - 30) * 0.75,
                            child: Stack(
                              children: [
                                Container(
                                  width: (size.width - 30) * 0.75,
                                  height: 2.5,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.grey.withOpacity(0.5)),
                                ),
                                Container(
                                  width: (size.width - 30) * 0.2,
                                  height: 2.5,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.red.withOpacity(0.8)),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            "35m remaining",
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                          )
                        ],
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Considered a fool and unfit to lead, Nobunaga rises to power as the head of the Oda clan, spurring dissent among those in his family vying for control.",
                        style: TextStyle(
                          height: 1.4,
                          color: Colors.white.withOpacity(0.9),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Cast: Masayoshi Haneda, Masami Kosaka, Hideaki Ito... more",
                        style: TextStyle(
                          fontSize: 13,
                          height: 1.4,
                          color: Colors.grey.withOpacity(0.9),
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Row(
                          children: List.generate(
                            likesList.length,
                            (index) => Padding(
                              padding: EdgeInsets.only(right: 50),
                              child: Column(
                                children: [
                                  Icon(
                                    likesList[index]['icon'],
                                    size: 25,
                                    color: Colors.white.withOpacity(0.9),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    likesList[index]['text'],
                                    style: TextStyle(
                                      fontSize: 12,
                                      height: 1.4,
                                      color: Colors.grey.withOpacity(0.9),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(
                            episodesList.length,
                            (index) => GestureDetector(
                              onTap: () {
                                setState(() {
                                  activeEpisode = index;
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.only(right: 25),
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border(
                                          top: BorderSide(
                                              width: 4,
                                              color: activeEpisode == index
                                                  ? Colors.red.withOpacity(0.8)
                                                  : Colors.transparent),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 12),
                                        child: Text(
                                          episodesList[index],
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: activeEpisode == index
                                                  ? Colors.white
                                                      .withOpacity(0.9)
                                                  : Colors.white
                                                      .withOpacity(0.5),
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      Text(
                        "Season 1",
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.white.withOpacity(0.5),
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(
                          movieList.length,
                          (index) => Padding(
                            padding: EdgeInsets.only(bottom: 20),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: (size.width - 30) * 0.85,
                                      height: 100,
                                      child: Row(
                                        children: [
                                          // movie list
                                          Container(
                                            width: 150,
                                            child: Stack(
                                              children: [
                                                Container(
                                                  width: 150,
                                                  height: 90,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              movieList[index]
                                                                  ['img']),
                                                          fit: BoxFit.cover)),
                                                ),
                                                Container(
                                                  width: 150,
                                                  height: 90,
                                                  decoration: BoxDecoration(
                                                    color: Colors.black
                                                        .withOpacity(0.3),
                                                  ),
                                                ),
                                                Positioned(
                                                  top: 30,
                                                  left: 57,
                                                  child: Container(
                                                    width: 38,
                                                    height: 38,
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      border: Border.all(
                                                          width: 2,
                                                          color: Colors.white),
                                                      color: Colors.black
                                                          .withOpacity(0.4),
                                                    ),
                                                    child: Center(
                                                      child: Icon(
                                                        Icons.play_arrow,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          // movie title
                                          Container(
                                            width: (size.width) * 0.35,
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    movieList[index]['title'],
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      height: 1.3,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.white
                                                          .withOpacity(0.9),
                                                    ),
                                                  ),
                                                  SizedBox(height: 3),
                                                  Text(
                                                    movieList[index]
                                                        ['duration'],
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.white
                                                          .withOpacity(0.5),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          // download
                                          Container(
                                            child: Center(
                                              child: Icon(
                                                Icons.file_download,
                                                color: Colors.white
                                                    .withOpacity(0.7),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 5),
                                Text(
                                  movieList[index]['description'],
                                  style: TextStyle(
                                    height: 1.4,
                                    color: Colors.white.withOpacity(0.5),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
