import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/movie/movie_detail_view/movie_detail_view_widget.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/index.dart';
import 'movie_detail_view_widget.dart' show MovieDetailViewWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MovieDetailViewModel extends FlutterFlowModel<MovieDetailViewWidget> {
  ///  Local state fields for this page.

  List<VideoItemStruct> videos = [];
  void addToVideos(VideoItemStruct item) => videos.add(item);
  void removeFromVideos(VideoItemStruct item) => videos.remove(item);
  void removeAtIndexFromVideos(int index) => videos.removeAt(index);
  void insertAtIndexInVideos(int index, VideoItemStruct item) =>
      videos.insert(index, item);
  void updateVideosAtIndex(int index, Function(VideoItemStruct) updateFn) =>
      videos[index] = updateFn(videos[index]);

  bool isLoading = false;

  VideoItemStruct? videoPlay;
  void updateVideoPlayStruct(Function(VideoItemStruct) updateFn) {
    updateFn(videoPlay ??= VideoItemStruct());
  }

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - fetchBunnyCollectionVideos] action in MovieDetailView widget.
  List<VideoItemStruct>? collectionVideos;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
