import '/backend/supabase/supabase.dart';
import '/components/boolean_copy_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  Completer<List<ProductsRow>>? requestCompleter;
  // Models for booleanCopy dynamic component.
  late FlutterFlowDynamicModels<BooleanCopyModel> booleanCopyModels;
  // Stores action output result for [Backend Call - Delete Row(s)] action in IconButton widget.
  List<ProductsRow>? deletedproducts;

  @override
  void initState(BuildContext context) {
    booleanCopyModels = FlutterFlowDynamicModels(() => BooleanCopyModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    booleanCopyModels.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
