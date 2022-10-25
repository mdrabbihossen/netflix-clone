import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/custom_appbar.dart';
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

          ],
        ),
      ),
    );
  }
}
