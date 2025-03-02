import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/sign_in_with_google_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'sign_up_widget.dart' show SignUpWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignUpModel extends FlutterFlowModel<SignUpWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for sign_up_name widget.
  FocusNode? signUpNameFocusNode;
  TextEditingController? signUpNameTextController;
  String? Function(BuildContext, String?)? signUpNameTextControllerValidator;
  // State field(s) for sign_up_email widget.
  FocusNode? signUpEmailFocusNode;
  TextEditingController? signUpEmailTextController;
  String? Function(BuildContext, String?)? signUpEmailTextControllerValidator;
  // State field(s) for sign_up_pass widget.
  FocusNode? signUpPassFocusNode;
  TextEditingController? signUpPassTextController;
  late bool signUpPassVisibility;
  String? Function(BuildContext, String?)? signUpPassTextControllerValidator;
  // State field(s) for sign_up_confirm_pass widget.
  FocusNode? signUpConfirmPassFocusNode;
  TextEditingController? signUpConfirmPassTextController;
  late bool signUpConfirmPassVisibility;
  String? Function(BuildContext, String?)?
      signUpConfirmPassTextControllerValidator;
  // Model for SignInWithGoogle component.
  late SignInWithGoogleModel signInWithGoogleModel;

  @override
  void initState(BuildContext context) {
    signUpPassVisibility = false;
    signUpConfirmPassVisibility = false;
    signInWithGoogleModel = createModel(context, () => SignInWithGoogleModel());
  }

  @override
  void dispose() {
    signUpNameFocusNode?.dispose();
    signUpNameTextController?.dispose();

    signUpEmailFocusNode?.dispose();
    signUpEmailTextController?.dispose();

    signUpPassFocusNode?.dispose();
    signUpPassTextController?.dispose();

    signUpConfirmPassFocusNode?.dispose();
    signUpConfirmPassTextController?.dispose();

    signInWithGoogleModel.dispose();
  }
}
