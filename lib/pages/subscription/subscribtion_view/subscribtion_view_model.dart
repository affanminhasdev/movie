import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/subscription_card/subscription_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/revenue_cat_util.dart' as revenue_cat;
import '/index.dart';
import 'subscribtion_view_widget.dart' show SubscribtionViewWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SubscribtionViewModel extends FlutterFlowModel<SubscribtionViewWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SubscriptionCard component.
  late SubscriptionCardModel subscriptionCardModel;
  // Stores action output result for [RevenueCat - Purchase] action in Button widget.
  bool? purchaseOutput;

  @override
  void initState(BuildContext context) {
    subscriptionCardModel = createModel(context, () => SubscriptionCardModel());
  }

  @override
  void dispose() {
    subscriptionCardModel.dispose();
  }
}
