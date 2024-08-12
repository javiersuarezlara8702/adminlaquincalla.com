import '/backend/supabase/supabase.dart';
import '/components/boolean_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'products_by_category_widget.dart' show ProductsByCategoryWidget;
import 'package:flutter/material.dart';

class ProductsByCategoryModel
    extends FlutterFlowModel<ProductsByCategoryWidget> {
  ///  State fields for stateful widgets in this page.

  Completer<List<ProductsRow>>? requestCompleter;
  // Models for boolean dynamic component.
  late FlutterFlowDynamicModels<BooleanModel> booleanModels;

  @override
  void initState(BuildContext context) {
    booleanModels = FlutterFlowDynamicModels(() => BooleanModel());
  }

  @override
  void dispose() {
    booleanModels.dispose();
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
