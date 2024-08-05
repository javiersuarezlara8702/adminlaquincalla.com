import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'boolean_model.dart';
export 'boolean_model.dart';

class BooleanWidget extends StatefulWidget {
  const BooleanWidget({
    super.key,
    required this.status,
    required this.id,
  });

  final String? status;
  final String? id;

  @override
  State<BooleanWidget> createState() => _BooleanWidgetState();
}

class _BooleanWidgetState extends State<BooleanWidget> {
  late BooleanModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BooleanModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.productosrows = await ProductsTable().queryRows(
        queryFn: (q) => q,
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
          _model.orderupdate = await OrderTable().update(
            data: {
              'status': 'completed',
            },
            matchingRows: (rows) => rows,
            returnRows: true,
          );
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'orden completada',
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
          _model.updateorder = await OrderTable().update(
            data: {
              'status': 'in process',
            },
            matchingRows: (rows) => rows,
            returnRows: true,
          );
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'orden en proceso ',
                style: TextStyle(
                  color: FlutterFlowTheme.of(context).primaryText,
                ),
              ),
              duration: const Duration(milliseconds: 4000),
              backgroundColor: FlutterFlowTheme.of(context).secondary,
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