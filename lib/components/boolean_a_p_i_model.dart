import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'boolean_a_p_i_widget.dart' show BooleanAPIWidget;
import 'package:flutter/material.dart';

class BooleanAPIModel extends FlutterFlowModel<BooleanAPIWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Query Rows] action in booleanAPI widget.
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
