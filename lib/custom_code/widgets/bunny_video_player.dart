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

import 'package:better_player_plus/better_player_plus.dart';

class BunnyVideoPlayer extends StatefulWidget {
  const BunnyVideoPlayer({
    super.key,
    this.width,
    this.height,
    required this.video,
  });

  final double? width;
  final double? height;
  final VideoItemStruct video;

  @override
  State<BunnyVideoPlayer> createState() => _BunnyVideoPlayerState();
}

class _BunnyVideoPlayerState extends State<BunnyVideoPlayer> {
  String pullZoneUrl = 'vz-06f108ac-a1b';

  @override
  Widget build(BuildContext context) {
    return BetterPlayerPlusScreen(
      videoUrl:
          "https://$pullZoneUrl.b-cdn.net/${widget.video.guid}/playlist.m3u8",
    );
  }
}

class BetterPlayerPlusScreen extends StatelessWidget {
  final String videoUrl;

  const BetterPlayerPlusScreen({super.key, required this.videoUrl});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BetterPlayer.network(
        videoUrl,
        betterPlayerConfiguration: const BetterPlayerConfiguration(
          aspectRatio: 16 / 9,
          looping: true,
          controlsConfiguration: BetterPlayerControlsConfiguration(
            enableSkips: true,
            enablePlaybackSpeed: true,
          ),
        ),
      ),
    );
  }
}
