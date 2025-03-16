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
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';
import 'series_title_view_model.dart';
export 'series_title_view_model.dart';

class SeriesTitleViewWidget extends StatefulWidget {
  const SeriesTitleViewWidget({super.key});

  static String routeName = 'SeriesTitleView';
  static String routePath = '/seriesTitleView';

  @override
  State<SeriesTitleViewWidget> createState() => _SeriesTitleViewWidgetState();
}

class _SeriesTitleViewWidgetState extends State<SeriesTitleViewWidget> {
  late SeriesTitleViewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SeriesTitleViewModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.subscriptionTest = await actions.checkIfUserIsSubscribed();
      FFAppState().isSubscribed = _model.subscriptionTest!;
      FFAppState().update(() {});
      _model.isLoading = true;
      safeSetState(() {});
      _model.allSeries = await SeriesTable().queryRows(
        queryFn: (q) => q.order('id', ascending: true),
      );
      _model.isLoading = false;
      safeSetState(() {});
    });

    _model.searchSeriesTextController ??= TextEditingController();
    _model.searchSeriesFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              if (!_model.isLoading)
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 20.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/pataka_logo.png',
                                width: 100.0,
                                height: 100.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              18.0, 0.0, 18.0, 0.0),
                          child: TextFormField(
                            controller: _model.searchSeriesTextController,
                            focusNode: _model.searchSeriesFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.searchSeriesTextController',
                              Duration(milliseconds: 2000),
                              () async {
                                safeSetState(() {
                                  _model.simpleSearchResults = TextSearch(_model
                                          .allSeries!
                                          .map((e) => e.title)
                                          .withoutNulls
                                          .toList()
                                          .map((str) =>
                                              TextSearchItem.fromTerms(
                                                  str, [str]))
                                          .toList())
                                      .search(_model
                                          .searchSeriesTextController.text)
                                      .map((r) => r.object)
                                      .toList();
                                  ;
                                });
                              },
                            ),
                            autofocus: false,
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: true,
                              hintText: 'Search Series',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context).lineColor,
                              prefixIcon: Icon(
                                Icons.search_sharp,
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 0.0,
                                ),
                            keyboardType: TextInputType.emailAddress,
                            validator: _model
                                .searchSeriesTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 35.0, 0.0, 35.0),
                            child: Text(
                              'HOT RELEASE',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ),
                        if (_model.searchSeriesTextController.text != null &&
                            _model.searchSeriesTextController.text != '')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 16.0, 16.0, 0.0),
                            child: Builder(
                              builder: (context) {
                                final series = _model.allSeries?.toList() ?? [];

                                return Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(series.length,
                                      (seriesIndex) {
                                    final seriesItem = series[seriesIndex];
                                    return Visibility(
                                      visible: _model.simpleSearchResults
                                          .contains(seriesItem.title),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 20.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            await ActivityTable().insert({
                                              'created_at':
                                                  supaSerialize<DateTime>(
                                                      getCurrentTimestamp),
                                              'series_id': seriesItem.id,
                                              'user_id': currentUserUid,
                                            });

                                            context.pushNamed(
                                              MovieDetailViewWidget.routeName,
                                              queryParameters: {
                                                'seriesData': serializeParam(
                                                  seriesItem,
                                                  ParamType.SupabaseRow,
                                                ),
                                              }.withoutNulls,
                                            );

                                            logFirebaseEvent(
                                                'Click on series ');
                                          },
                                          child: Container(
                                            width: double.infinity,
                                            height: 350.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(18.0),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 1.0, 0.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            18.0),
                                                    child: CachedNetworkImage(
                                                      fadeInDuration: Duration(
                                                          milliseconds: 500),
                                                      fadeOutDuration: Duration(
                                                          milliseconds: 500),
                                                      imageUrl: valueOrDefault<
                                                          String>(
                                                        seriesItem.thumbnail,
                                                        'https://picsum.photos/seed/165/600',
                                                      ),
                                                      width: double.infinity,
                                                      height: 300.0,
                                                      fit: BoxFit.fitWidth,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 15.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      valueOrDefault<String>(
                                                        seriesItem.title,
                                                        'Title',
                                                      ),
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                                );
                              },
                            ),
                          ),
                        Opacity(
                          opacity: 0.6,
                          child: Divider(
                            thickness: 1.0,
                            color: Color(0x73A9AAAC),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 35.0, 0.0, 35.0),
                          child: Text(
                            'UPCOMING RELEASE',
                            style: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                        if (_model.searchSeriesTextController.text == null ||
                            _model.searchSeriesTextController.text == '')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 16.0, 16.0, 0.0),
                            child: Builder(
                              builder: (context) {
                                final series = _model.allSeries?.toList() ?? [];

                                return Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(series.length,
                                      (seriesIndex) {
                                    final seriesItem = series[seriesIndex];
                                    return Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 20.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await ActivityTable().insert({
                                            'created_at':
                                                supaSerialize<DateTime>(
                                                    getCurrentTimestamp),
                                            'series_id': seriesItem.id,
                                            'user_id': currentUserUid,
                                          });

                                          context.pushNamed(
                                            MovieDetailViewWidget.routeName,
                                            queryParameters: {
                                              'seriesData': serializeParam(
                                                seriesItem,
                                                ParamType.SupabaseRow,
                                              ),
                                            }.withoutNulls,
                                          );
                                        },
                                        child: Container(
                                          width: double.infinity,
                                          height: 350.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(18.0),
                                                child: CachedNetworkImage(
                                                  fadeInDuration: Duration(
                                                      milliseconds: 500),
                                                  fadeOutDuration: Duration(
                                                      milliseconds: 500),
                                                  imageUrl:
                                                      valueOrDefault<String>(
                                                    seriesItem.thumbnail,
                                                    'https://picsum.photos/seed/165/600',
                                                  ),
                                                  width: double.infinity,
                                                  height: 300.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 15.0, 0.0, 0.0),
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    seriesItem.title,
                                                    'Title',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                                );
                              },
                            ),
                          ),
                      ],
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
                        color: FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
