import '/backend/supabase/supabase.dart';
import '/components/boolean_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'products_by_category_model.dart';
export 'products_by_category_model.dart';

class ProductsByCategoryWidget extends StatefulWidget {
  const ProductsByCategoryWidget({
    super.key,
    required this.productcategory,
  });

  final CategoryRow? productcategory;

  @override
  State<ProductsByCategoryWidget> createState() =>
      _ProductsByCategoryWidgetState();
}

class _ProductsByCategoryWidgetState extends State<ProductsByCategoryWidget> {
  late ProductsByCategoryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductsByCategoryModel());
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
              context.safePop();
            },
          ),
          title: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 0.0, 0.0),
            child: Text(
              valueOrDefault<String>(
                widget.productcategory?.name,
                '0',
              ),
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
              child: FutureBuilder<List<ProductsRow>>(
                future:
                    (_model.requestCompleter ??= Completer<List<ProductsRow>>()
                          ..complete(ProductsTable().queryRows(
                            queryFn: (q) => q.eq(
                              'category',
                              widget.productcategory?.name,
                            ),
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
                  List<ProductsRow> listViewProductsRowList = snapshot.data!;

                  if (listViewProductsRowList.isEmpty) {
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
                      setState(() => _model.requestCompleter = null);
                      await _model.waitForRequestCompleted();
                    },
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      primary: false,
                      scrollDirection: Axis.vertical,
                      itemCount: listViewProductsRowList.length,
                      itemBuilder: (context, listViewIndex) {
                        final listViewProductsRow =
                            listViewProductsRowList[listViewIndex];
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
                                'updateproduct',
                                queryParameters: {
                                  'products': serializeParam(
                                    listViewProductsRow,
                                    ParamType.SupabaseRow,
                                  ),
                                  'id': serializeParam(
                                    listViewProductsRow.id,
                                    ParamType.int,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Hero(
                                                  tag: listViewProductsRow
                                                      .photoUrl!,
                                                  transitionOnUserGestures:
                                                      true,
                                                  child: Image.network(
                                                    listViewProductsRow
                                                        .photoUrl!,
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
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 8.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  '\$${listViewProductsRow.price?.toString()}',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        fontSize: 9.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 5.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 5.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      valueOrDefault<String>(
                                                        listViewProductsRow
                                                            .name,
                                                        '0',
                                                      ).maybeHandleOverflow(
                                                        maxChars: 15,
                                                        replacement: '…',
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
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
                                                ),
                                              ],
                                            ),
                                          ),
                                          Text(
                                            'Quitar/Publicar',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  fontSize: 9.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          wrapWithModel(
                                            model:
                                                _model.booleanModels.getModel(
                                              listViewProductsRow.id.toString(),
                                              listViewIndex,
                                            ),
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: BooleanWidget(
                                              key: Key(
                                                'Keyj4w_${listViewProductsRow.id.toString()}',
                                              ),
                                              status:
                                                  listViewProductsRow.status!,
                                              id: listViewProductsRow.id
                                                  .toString(),
                                            ),
                                          ),
                                        ],
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
              ),
            ),
          ),
        ),
      ),
    );
  }
}
