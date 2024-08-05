import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'boolean_a_p_i_model.dart';
export 'boolean_a_p_i_model.dart';

class BooleanAPIWidget extends StatefulWidget {
  const BooleanAPIWidget({
    super.key,
    required this.status,
    required this.id,
  });

  final String? status;
  final int? id;

  @override
  State<BooleanAPIWidget> createState() => _BooleanAPIWidgetState();
}

class _BooleanAPIWidgetState extends State<BooleanAPIWidget> {
  late BooleanAPIModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BooleanAPIModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.productosrows = await ProductsTable().queryRows(
        queryFn: (q) => q.eq(
          'id',
          widget.id,
        ),
      );
      if ((widget.status == 'publish') && (_model.switchValue == true)) {
        setState(() {
          _model.switchValue = true;
        });
      } else {
        setState(() {
          _model.switchValue = false;
        });
      }
    });

    _model.switchValue = true;
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Switch.adaptive(
      value: _model.switchValue!,
      onChanged: (newValue) async {
        setState(() => _model.switchValue = newValue);
        if (newValue) {
          _model.actionstatustrue = await ProductsTable().update(
            data: {
              'status': 'publish',
            },
            matchingRows: (rows) => rows.eq(
              'id',
              widget.id,
            ),
            returnRows: true,
          );
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'Producto publicado',
                style: TextStyle(
                  color: FlutterFlowTheme.of(context).primaryText,
                ),
              ),
              duration: const Duration(milliseconds: 4000),
              backgroundColor: FlutterFlowTheme.of(context).secondary,
            ),
          );

          setState(() {});
        } else {
          _model.actionstatusdraft = await ProductsTable().update(
            data: {
              'status': 'Draft',
            },
            matchingRows: (rows) => rows.eq(
              'id',
              widget.id,
            ),
            returnRows: true,
          );
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'Producto Quitado',
                style: TextStyle(
                  color: FlutterFlowTheme.of(context).primaryText,
                ),
              ),
              duration: const Duration(milliseconds: 4000),
              backgroundColor: FlutterFlowTheme.of(context).error,
            ),
          );

          setState(() {});
        }
      },
      activeColor: const Color(0xFF1818DC),
      activeTrackColor: const Color(0xFF5876FF),
      inactiveTrackColor: FlutterFlowTheme.of(context).alternate,
      inactiveThumbColor: FlutterFlowTheme.of(context).secondaryText,
    );
  }
}
