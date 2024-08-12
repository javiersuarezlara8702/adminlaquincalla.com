import '/backend/api_requests/api_calls.dart';
import '/components/boolean_copy_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'updateproduct_copy_model.dart';
export 'updateproduct_copy_model.dart';

class UpdateproductCopyWidget extends StatefulWidget {
  const UpdateproductCopyWidget({
    super.key,
    required this.id,
    required this.category,
    required this.price,
    required this.quanty,
    required this.name,
    required this.photourl,
    required this.status,
  });

  final int? id;
  final String? category;
  final int? price;
  final int? quanty;
  final String? name;
  final String? photourl;
  final String? status;

  @override
  State<UpdateproductCopyWidget> createState() =>
      _UpdateproductCopyWidgetState();
}

class _UpdateproductCopyWidgetState extends State<UpdateproductCopyWidget> {
  late UpdateproductCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UpdateproductCopyModel());

    _model.textController1 ??=
        TextEditingController(text: widget.price?.toString());
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??=
        TextEditingController(text: widget.quanty?.toString());
    _model.textFieldFocusNode2 ??= FocusNode();
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
              context.pop();
            },
          ),
          title: Text(
            'Modificar producto',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 0.0, 16.0),
                  child: Text(
                    valueOrDefault<String>(
                      widget.name,
                      'null',
                    ),
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily: 'Outfit',
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed(
                        'updatephotoCopy',
                        queryParameters: {
                          'id': serializeParam(
                            widget.id,
                            ParamType.int,
                          ),
                          'photourl': serializeParam(
                            widget.photourl,
                            ParamType.String,
                          ),
                          'name': serializeParam(
                            '',
                            ParamType.String,
                          ),
                        }.withoutNulls,
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        widget.photourl!,
                        width: 390.0,
                        height: 200.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 15.0, 20.0, 16.0),
                    child: FutureBuilder<ApiCallResponse>(
                      future: (_model.apiRequestCompleter ??=
                              Completer<ApiCallResponse>()
                                ..complete(RetriveCategoryCall.call()))
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
                        final dropDownRetriveCategoryResponse = snapshot.data!;

                        return FlutterFlowDropDown<String>(
                          controller: _model.dropDownValueController ??=
                              FormFieldController<String>(
                            _model.dropDownValue ??= widget.category,
                          ),
                          options: (getJsonField(
                            dropDownRetriveCategoryResponse.jsonBody,
                            r'''$.name''',
                            true,
                          ) as List)
                              .map<String>((s) => s.toString())
                              .toList(),
                          onChanged: (val) =>
                              setState(() => _model.dropDownValue = val),
                          width: 387.0,
                          height: 71.0,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                          hintText: widget.category,
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 2.0,
                          borderColor: FlutterFlowTheme.of(context).primary,
                          borderWidth: 2.0,
                          borderRadius: 8.0,
                          margin: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 4.0, 16.0, 4.0),
                          hidesUnderline: true,
                          isOverButton: true,
                          isSearchable: false,
                          isMultiSelect: false,
                          labelText: 'Categoria',
                          labelTextStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 15.0, 16.0),
                  child: TextFormField(
                    controller: _model.textController1,
                    focusNode: _model.textFieldFocusNode1,
                    autofocus: false,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Precio  CUP',
                      hintText: 'ingrese nueva cantidad',
                      hintStyle:
                          FlutterFlowTheme.of(context).bodyLarge.override(
                                fontFamily: 'Readex Pro',
                                letterSpacing: 0.0,
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).primary,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0.0,
                        ),
                    keyboardType: TextInputType.number,
                    validator:
                        _model.textController1Validator.asValidator(context),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 15.0, 16.0),
                  child: TextFormField(
                    controller: _model.textController2,
                    focusNode: _model.textFieldFocusNode2,
                    autofocus: false,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText:
                          'cantidad de prodcuto, ingresa cant para cambiar',
                      hintText: 'ingrese nueva cantidad',
                      hintStyle:
                          FlutterFlowTheme.of(context).bodyLarge.override(
                                fontFamily: 'Readex Pro',
                                letterSpacing: 0.0,
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).primary,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0.0,
                        ),
                    keyboardType: TextInputType.number,
                    validator:
                        _model.textController2Validator.asValidator(context),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'Quita/Poner producto',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: const AlignmentDirectional(1.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 50.0, 0.0),
                          child: wrapWithModel(
                            model: _model.booleanCopyModel,
                            updateCallback: () => setState(() {}),
                            child: BooleanCopyWidget(
                              status: widget.status!,
                              id: widget.id!,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 15.0, 16.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      _model.uploadedphoto1 = await UpdateAProductCall.call(
                        price: _model.textController1.text,
                        quanty: _model.textController2.text,
                        category: _model.dropDownValue,
                      );

                      setState(() => _model.apiRequestCompleter = null);
                      await _model.waitForApiRequestCompleted();

                      setState(() {});
                    },
                    text: 'Update Product',
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 50.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                color: Colors.white,
                                letterSpacing: 0.0,
                              ),
                      elevation: 2.0,
                      borderRadius: BorderRadius.circular(8.0),
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
