import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sign_in_with_google_model.dart';
export 'sign_in_with_google_model.dart';

class SignInWithGoogleWidget extends StatefulWidget {
  const SignInWithGoogleWidget({super.key});

  @override
  State<SignInWithGoogleWidget> createState() => _SignInWithGoogleWidgetState();
}

class _SignInWithGoogleWidgetState extends State<SignInWithGoogleWidget> {
  late SignInWithGoogleModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignInWithGoogleModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 45.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryText,
        borderRadius: BorderRadius.circular(7.0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/7123025_logo_google_g_icon.png',
                width: 40.0,
                height: 40.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            'Sign in with Google',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Poppins',
                  color: Colors.black,
                  fontSize: 14.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w500,
                ),
          ),
        ],
      ),
    );
  }
}
