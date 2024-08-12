import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'gestores_register_widget.dart' show GestoresRegisterWidget;
import 'package:flutter/material.dart';

class GestoresRegisterModel extends FlutterFlowModel<GestoresRegisterWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  Completer<List<GestoresRow>>? requestCompleter;
  // Stores action output result for [Backend Call - Delete Row(s)] action in Button widget.
  List<GestoresRow>? user;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<UserRow>? userCopy;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
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
