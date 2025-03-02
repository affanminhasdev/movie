import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'search_widget.dart' show SearchWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SearchModel extends FlutterFlowModel<SearchWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for search_text widget.
  FocusNode? searchTextFocusNode;
  TextEditingController? searchTextTextController;
  String? Function(BuildContext, String?)? searchTextTextControllerValidator;
  // Stores action output result for [Backend Call - API (searchMovies)] action in search_text widget.
  ApiCallResponse? movies;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchTextFocusNode?.dispose();
    searchTextTextController?.dispose();
  }
}
