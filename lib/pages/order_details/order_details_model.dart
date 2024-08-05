import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'order_details_widget.dart' show OrderDetailsWidget;
import 'package:flutter/material.dart';

class OrderDetailsModel extends FlutterFlowModel<OrderDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<OrderRow>? statuspay;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<GestoresRow>? gestores1;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<OrderRow>? statusnotpay;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<OrderRow>? completed;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<GestoresRow>? ranking;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<OrderRow>? inprocess;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
