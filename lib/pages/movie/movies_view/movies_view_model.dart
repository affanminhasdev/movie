import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'movies_view_widget.dart' show MoviesViewWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MoviesViewModel extends FlutterFlowModel<MoviesViewWidget> {
  ///  Local state fields for this page.

  bool isLoading = false;

  List<VideoItemStruct> fetchedVideos = [];
  void addToFetchedVideos(VideoItemStruct item) => fetchedVideos.add(item);
  void removeFromFetchedVideos(VideoItemStruct item) =>
      fetchedVideos.remove(item);
  void removeAtIndexFromFetchedVideos(int index) =>
      fetchedVideos.removeAt(index);
  void insertAtIndexInFetchedVideos(int index, VideoItemStruct item) =>
      fetchedVideos.insert(index, item);
  void updateFetchedVideosAtIndex(
          int index, Function(VideoItemStruct) updateFn) =>
      fetchedVideos[index] = updateFn(fetchedVideos[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - fetchBunnyVideos] action in MoviesView widget.
  List<VideoItemStruct>? videos;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
