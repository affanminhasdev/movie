import '';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'movies_view_model.dart';
export 'movies_view_model.dart';

class MoviesViewWidget extends StatefulWidget {
  const MoviesViewWidget({super.key});

  static String routeName = 'MoviesView';
  static String routePath = '/moviesView';

  @override
  State<MoviesViewWidget> createState() => _MoviesViewWidgetState();
}

class _MoviesViewWidgetState extends State<MoviesViewWidget> {
  late MoviesViewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MoviesViewModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.isLoading = true;
      safeSetState(() {});
      _model.videos = await actions.fetchBunnyVideos();
      _model.fetchedVideos = _model.videos!.toList().cast<VideoItemStruct>();
      safeSetState(() {});
      _model.isLoading = false;
      safeSetState(() {});
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Watch Movies',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        fontSize: 19.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                if (!_model.isLoading)
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                      child: Builder(
                        builder: (context) {
                          final video = _model.fetchedVideos.toList();

                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: video.length,
                            itemBuilder: (context, videoIndex) {
                              final videoItem = video[videoIndex];
                              return Container(
                                  width: 100, height: 100, color: Colors.green);
                            },
                          );
                        },
                      ),
                    ),
                  ),
                if (_model.isLoading)
                  Expanded(
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        width: 50.0,
                        height: 50.0,
                        child: custom_widgets.CustomLoader(
                          width: 50.0,
                          height: 50.0,
                          size: 50.0,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
