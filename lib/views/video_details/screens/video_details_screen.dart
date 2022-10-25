import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
