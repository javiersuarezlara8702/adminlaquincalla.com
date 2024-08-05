import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'boolean_widget.dart' show BooleanWidget;
import 'package:flutter/material.dart';

class BooleanModel extends FlutterFlowModel<BooleanWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Query Rows] action in boolean widget.
  List<ProductsRow>? productosrows;
  // State field(s) for Switch widget.
  bool? switchValue;
  // Stores action output result for [Backend Call - Update Row(s)] action in Switch widget.
  List<OrderRow>? orderupdate;
  // Stores action output result for [Backend Call - Update Row(s)] action in Switch widget.
  List<OrderRow>? updateorder;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
