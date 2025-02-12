// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

class BunnyChewiePlayer extends StatefulWidget {
  const BunnyChewiePlayer({
    super.key,
    this.width,
    this.height,
    required this.video,
  });

  final double? width;
  final double? height;
  final VideoItemStruct video;

  @override
  State<BunnyChewiePlayer> createState() => _BunnyChewiePlayerState();
}

class _BunnyChewiePlayerState extends State<BunnyChewiePlayer> {
  String pullZoneUrl = 'vz-06f108ac-a1b';
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(0),
        child: Video(
          videoPlayerController: VideoPlayerController.networkUrl(
            Uri.parse(
                "https://$pullZoneUrl.b-cdn.net/${widget.video.guid}/playlist.m3u8"),
          ),
          loop: false,
        ),
      ),
    );
  }
}

class Video extends StatefulWidget {
  final VideoPlayerController videoPlayerController;
  final bool loop;

  const Video({
    Key? key,
    required this.videoPlayerController,
    required this.loop,
  }) : super(key: key);

  @override
  State<Video> createState() => _VideoState();
}

class _VideoState extends State<Video> {
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _chewieController = ChewieController(
      videoPlayerController: widget.videoPlayerController,
      looping: widget.loop,
      aspectRatio: 16 / 9,
      autoInitialize: true,
      zoomAndPan: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      width: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(0),
        child: Chewie(controller: _chewieController),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    widget.videoPlayerController.dispose();
    _chewieController.dispose();
  }
}
