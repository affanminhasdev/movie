import '';
import '/auth/supabase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/index.dart';
import 'series_title_view_widget.dart' show SeriesTitleViewWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class SeriesTitleViewModel extends FlutterFlowModel<SeriesTitleViewWidget> {
  ///  Local state fields for this page.

  bool isLoading = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - checkIfUserIsSubscribed] action in SeriesTitleView widget.
  bool? subscriptionTest;
  // Stores action output result for [Backend Call - Query Rows] action in SeriesTitleView widget.
  List<ProfileRow>? userProfile;
  // Stores action output result for [Backend Call - Query Rows] action in SeriesTitleView widget.
  List<SeriesRow>? allSeries;
  // State field(s) for SearchSeries widget.
  FocusNode? searchSeriesFocusNode;
  TextEditingController? searchSeriesTextController;
  String? Function(BuildContext, String?)? searchSeriesTextControllerValidator;
  List<String> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchSeriesFocusNode?.dispose();
    searchSeriesTextController?.dispose();
  }
}
