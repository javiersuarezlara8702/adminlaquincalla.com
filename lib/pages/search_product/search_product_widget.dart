import '/backend/api_requests/api_calls.dart';
import '/components/boolean_copy_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'search_product_model.dart';
export 'search_product_model.dart';

class SearchProductWidget extends StatefulWidget {
  const SearchProductWidget({
    super.key,
    required this.search,
  });

  final String? search;

  @override
  State<SearchProductWidget> createState() => _SearchProductWidgetState();
}

class _SearchProductWidgetState extends State<SearchProductWidget> {
  late SearchProductModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchProductModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pushNamed(
                'HomePage',
                extra: <String, dynamic>{
                  kTransitionInfoKey: const TransitionInfo(
                    hasTransition: true,
                    transitionType: PageTransitionType.leftToRight,
                    duration: Duration(milliseconds: 600),
                  ),
                },
              );
            },
          ),
          title: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 0.0, 0.0),
            child: Text(
              'Listado de productos',
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Outfit',
                    color: Colors.white,
                    fontSize: 22.0,
                    letterSpacing: 0.0,
                  ),
            ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: MediaQuery.sizeOf(context).height * 0.9,
            decoration: const BoxDecoration(),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
              child: FutureBuilder<ApiCallResponse>(
                future:
                    (_model.apiRequestCompleter ??= Completer<ApiCallResponse>()
                          ..complete(SearchCall.call(
                            search: widget.search,
                          )))
                        .future,
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                            FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                      ),
                    );
                  }
                  final listViewSearchResponse = snapshot.data!;

                  return Builder(
                    builder: (context) {
                      final search = getJsonField(
                        listViewSearchResponse.jsonBody,
                        r'''$''',
                      ).toList();
                      if (search.isEmpty) {
                        return Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50.0),
                            child: Image.asset(
                              'assets/images/istockphoto-1288486079-612x612.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                        );
                      }

                      return RefreshIndicator(
                        onRefresh: () async {
                          setState(() => _model.apiRequestCompleter = null);
                          await _model.waitForApiRequestCompleted();
                        },
                        child: ListView.builder(
                          padding: EdgeInsets.zero,
                          primary: false,
                          scrollDirection: Axis.vertical,
                          itemCount: search.length,
                          itemBuilder: (context, searchIndex) {
                            final searchItem = search[searchIndex];
                            return Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 8.0, 16.0, 8.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    'updateproductCopy',
                                    queryParameters: {
                                      'id': serializeParam(
                                        getJsonField(
                                          searchItem,
                                          r'''$.id''',
                                        ),
                                        ParamType.int,
                                      ),
                                      'category': serializeParam(
                                        getJsonField(
                                          searchItem,
                                          r'''$.category''',
                                        ).toString(),
                                        ParamType.String,
                                      ),
                                      'price': serializeParam(
                                        getJsonField(
                                          searchItem,
                                          r'''$.price''',
                                        ),
                                        ParamType.int,
                                      ),
                                      'quanty': serializeParam(
                                        getJsonField(
                                          searchItem,
                                          r'''$.quanty''',
                                        ),
                                        ParamType.int,
                                      ),
                                      'name': serializeParam(
                                        getJsonField(
                                          searchItem,
                                          r'''$.name''',
                                        ).toString(),
                                        ParamType.String,
                                      ),
                                      'photourl': serializeParam(
                                        getJsonField(
                                          searchItem,
                                          r'''$.photo_url''',
                                        ).toString(),
                                        ParamType.String,
                                      ),
                                      'status': serializeParam(
                                        getJsonField(
                                          searchItem,
                                          r'''$.status''',
                                        ).toString(),
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    boxShadow: const [
                                      BoxShadow(
                                        blurRadius: 4.0,
                                        color: Color(0x3416202A),
                                        offset: Offset(
                                          0.0,
                                          2.0,
                                        ),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        12.0, 8.0, 12.0, 8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 0.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Image.network(
                                                      getJsonField(
                                                        searchItem,
                                                        r'''$.photo_url''',
                                                      ).toString(),
                                                      width: 110.0,
                                                      height: 110.0,
                                                      fit: BoxFit.cover,
                                                      errorBuilder: (context,
                                                              error,
                                                              stackTrace) =>
                                                          Image.asset(
                                                        'assets/images/error_image.jpg',
                                                        width: 110.0,
                                                        height: 110.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    30.0, 0.0, 0.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 8.0, 0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    50.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          '\$${getJsonField(
                                                            searchItem,
                                                            r'''$.price''',
                                                          ).toString()}',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                fontSize: 9.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 5.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    5.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          getJsonField(
                                                            searchItem,
                                                            r'''$.name''',
                                                          )
                                                              .toString()
                                                              .maybeHandleOverflow(
                                                                maxChars: 15,
                                                                replacement:
                                                                    '…',
                                                              ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .headlineSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Outfit',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 15.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Text(
                                                  'Quitar/Publicar',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        fontSize: 9.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .booleanCopyModels
                                                      .getModel(
                                                    getJsonField(
                                                      searchItem,
                                                      r'''$.id''',
                                                    ).toString(),
                                                    searchIndex,
                                                  ),
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child: BooleanCopyWidget(
                                                    key: Key(
                                                      'Key6ww_${getJsonField(
                                                        searchItem,
                                                        r'''$.id''',
                                                      ).toString()}',
                                                    ),
                                                    status: getJsonField(
                                                      searchItem,
                                                      r'''$.status''',
                                                    ).toString(),
                                                    id: getJsonField(
                                                      searchItem,
                                                      r'''$.id''',
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
