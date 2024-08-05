import '/backend/api_requests/api_calls.dart';
import '/components/boolean_copy_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'search_product_widget.dart' show SearchProductWidget;
import 'package:flutter/material.dart';

class SearchProductModel extends FlutterFlowModel<SearchProductWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  Completer<ApiCallResponse>? apiRequestCompleter;
  // Models for booleanCopy dynamic component.
  late FlutterFlowDynamicModels<BooleanCopyModel> booleanCopyModels;

  @override
  void initState(BuildContext context) {
    booleanCopyModels = FlutterFlowDynamicModels(() => BooleanCopyModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    booleanCopyModels.dispose();
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
