import '/components/login_bottom_sheet/login_bottom_sheet_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import 'onboarding_widget.dart' show OnboardingWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OnboardingModel extends FlutterFlowModel<OnboardingWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - checkIfUserIsSubscribed] action in Onboarding widget.
  bool? subscriptionTest;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
