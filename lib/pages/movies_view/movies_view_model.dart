import '/backend/schema/structs/index.dart';
import '/components/video_component_widget.dart';
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

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - fetchBunnyVideos] action in MoviesView widget.
  List<VideoItemStruct>? videos;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
