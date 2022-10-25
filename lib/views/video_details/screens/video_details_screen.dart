import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/custom_appbar.dart';
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
