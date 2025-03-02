import '/auth/supabase_auth/auth_util.dart';
import '/components/sign_in_with_google_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'sign_in_widget.dart' show SignInWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignInModel extends FlutterFlowModel<SignInWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for sign_in_email widget.
  FocusNode? signInEmailFocusNode;
  TextEditingController? signInEmailTextController;
  String? Function(BuildContext, String?)? signInEmailTextControllerValidator;
  // State field(s) for sign_in_pass widget.
  FocusNode? signInPassFocusNode;
  TextEditingController? signInPassTextController;
  late bool signInPassVisibility;
  String? Function(BuildContext, String?)? signInPassTextControllerValidator;
  // Model for SignInWithGoogle component.
  late SignInWithGoogleModel signInWithGoogleModel;

  @override
  void initState(BuildContext context) {
    signInPassVisibility = false;
    signInWithGoogleModel = createModel(context, () => SignInWithGoogleModel());
  }

  @override
  void dispose() {
    signInEmailFocusNode?.dispose();
    signInEmailTextController?.dispose();

    signInPassFocusNode?.dispose();
    signInPassTextController?.dispose();

    signInWithGoogleModel.dispose();
  }
}
