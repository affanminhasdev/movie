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

import 'package:timeago/timeago.dart' as timeago;

class VideoThumbnailView extends StatefulWidget {
  const VideoThumbnailView({
    super.key,
    this.width,
    this.height,
    required this.video,
  });

  final double? width;
  final double? height;
  final VideoItemStruct video;

  @override
  State<VideoThumbnailView> createState() => _VideoThumbnailViewState();
}

class _VideoThumbnailViewState extends State<VideoThumbnailView> {
  String pullZoneUrl = 'vz-06f108ac-a1b';

  String formatVideoLength(int seconds) {
    final duration = Duration(seconds: seconds);
    String twoDigits(int n) => n.toString().padLeft(2, '0');

    final hours = duration.inHours;
    final minutes = duration.inMinutes.remainder(60);
    final secs = duration.inSeconds.remainder(60);

    if (hours > 0) {
      return '${twoDigits(hours)}:${twoDigits(minutes)}:${twoDigits(secs)}';
    } else {
      return '${twoDigits(minutes)}:${twoDigits(secs)}';
    }
  }

  Future<String> fetchThumbnailUrl() async {
    await Future.delayed(const Duration(milliseconds: 200));
    return 'https://$pullZoneUrl.b-cdn.net/${widget.video.guid}/${widget.video.thumbnailFileName}';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FutureBuilder<String>(
            future: fetchThumbnailUrl(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 200,
                    color: Colors.transparent,
                    child: const Center(
                      child: CircularProgressIndicator(color: Colors.red),
                    ),
                  ),
                );
              } else if (snapshot.hasError) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    color: Colors.transparent,
                    child: const Center(
                      child: Icon(Icons.error, color: Colors.red),
                    ),
                  ),
                );
              } else {
                return Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        snapshot.data!,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) => Container(
                          color: Colors.transparent,
                          child: const Icon(Icons.error, color: Colors.red),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(4),
                      margin: const EdgeInsets.only(right: 10, bottom: 10),
                      decoration: BoxDecoration(
                        color: Colors.white10,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        formatVideoLength(widget.video.length),
                        style:
                            const TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ],
                );
              }
            },
          ),
          const SizedBox(height: 10),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Text(
          //         widget.video.title,
          //         style: const TextStyle(color: Colors.white, fontSize: 16),
          //       ),
          //       const SizedBox(height: 6),
          //       Row(
          //         children: [
          //           Text(
          //             '${widget.video.views} views',
          //             style: const TextStyle(color: Colors.white, fontSize: 12),
          //           ),
          //           const Padding(
          //             padding: EdgeInsets.symmetric(horizontal: 6),
          //             child: CircleAvatar(
          //                 radius: 1.5, backgroundColor: Colors.white),
          //           ),
          //           Text(
          //             timeago.format(DateTime.parse(widget.video.dateUploaded)),
          //             style: const TextStyle(color: Colors.white, fontSize: 12),
          //           ),
          //         ],
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
