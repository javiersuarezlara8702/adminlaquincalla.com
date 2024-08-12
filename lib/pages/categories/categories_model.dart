import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'categories_widget.dart' show CategoriesWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class CategoriesModel extends FlutterFlowModel<CategoriesWidget> {
  ///  State fields for stateful widgets in this page.

  Completer<List<BolsaDeEmpleoRow>>? requestCompleter;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

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
