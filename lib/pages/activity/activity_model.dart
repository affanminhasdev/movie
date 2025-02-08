import '/components/activity_card/activity_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'activity_widget.dart' show ActivityWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ActivityModel extends FlutterFlowModel<ActivityWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ActivityCard component.
  late ActivityCardModel activityCardModel1;
  // Model for ActivityCard component.
  late ActivityCardModel activityCardModel2;
  // Model for ActivityCard component.
  late ActivityCardModel activityCardModel3;
  // Model for ActivityCard component.
  late ActivityCardModel activityCardModel4;

  @override
  void initState(BuildContext context) {
    activityCardModel1 = createModel(context, () => ActivityCardModel());
    activityCardModel2 = createModel(context, () => ActivityCardModel());
    activityCardModel3 = createModel(context, () => ActivityCardModel());
    activityCardModel4 = createModel(context, () => ActivityCardModel());
  }

  @override
  void dispose() {
    activityCardModel1.dispose();
    activityCardModel2.dispose();
    activityCardModel3.dispose();
    activityCardModel4.dispose();
  }
}
