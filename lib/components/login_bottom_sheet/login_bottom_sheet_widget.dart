import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/home/home_widget.dart';
import '/pages/sign_in/sign_in_widget.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'login_bottom_sheet_model.dart';
export 'login_bottom_sheet_model.dart';

class LoginBottomSheetWidget extends StatefulWidget {
  const LoginBottomSheetWidget({super.key});

  @override
  State<LoginBottomSheetWidget> createState() => _LoginBottomSheetWidgetState();
}

class _LoginBottomSheetWidgetState extends State<LoginBottomSheetWidget> {
  late LoginBottomSheetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginBottomSheetModel());
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
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(24.0, 8.0, 24.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 80.0,
              height: 4.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryText,
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 16.0),
              child: Text(
                'Start with',
                style: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Poppins',
                      letterSpacing: 0.0,
                    ),
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignInWidget(),
                  ),
                );
              },
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBtnText,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 4.0),
                  child: Material(
                    color: Colors.transparent,
                    child: ListTile(
                      leading: Icon(
                        FFIcons.knameUser,
                        color: Colors.white,
                        size: 32.0,
                      ),
                      title: Text(
                        'Member',
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      subtitle: Text(
                        'You can sign up/sign in with your email address',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              color: Color(0xA8E9EAEA),
                              fontSize: 12.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 20.0,
                      ),
                      tileColor: Colors.black,
                      dense: false,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 8.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeWidget(),
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).primaryText,
                      width: 1.0,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 4.0),
                    child: Material(
                      color: Colors.transparent,
                      child: ListTile(
                        leading: Icon(
                          FFIcons.knameUser,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 32.0,
                        ),
                        title: Text(
                          'Guest',
                          style: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: 'Poppins',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                        subtitle: Text(
                          'Use the app without authentication',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 12.0,
                                letterSpacing: 0.0,
                              ),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 20.0,
                        ),
                        tileColor: Colors.black,
                        dense: false,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
