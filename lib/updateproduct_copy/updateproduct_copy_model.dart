import '/backend/api_requests/api_calls.dart';
import '/components/boolean_copy_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:async';
import 'updateproduct_copy_widget.dart' show UpdateproductCopyWidget;
import 'package:flutter/material.dart';

class UpdateproductCopyModel extends FlutterFlowModel<UpdateproductCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Model for booleanCopy component.
  late BooleanCopyModel booleanCopyModel;
  // Stores action output result for [Backend Call - API (Update a product)] action in Button widget.
  ApiCallResponse? uploadedphoto1;
  Completer<ApiCallResponse>? apiRequestCompleter;

  @override
  void initState(BuildContext context) {
    booleanCopyModel = createModel(context, () => BooleanCopyModel());
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    booleanCopyModel.dispose();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
