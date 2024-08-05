import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'boolean_copy_widget.dart' show BooleanCopyWidget;
import 'package:flutter/material.dart';

class BooleanCopyModel extends FlutterFlowModel<BooleanCopyWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Query Rows] action in booleanCopy widget.
  List<ProductsRow>? productosrows;
  // State field(s) for Switch widget.
  bool? switchValue;
  // Stores action output result for [Backend Call - Update Row(s)] action in Switch widget.
  List<ProductsRow>? actionstatustrue;
  // Stores action output result for [Backend Call - Update Row(s)] action in Switch widget.
  List<ProductsRow>? actionstatusdraft;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
