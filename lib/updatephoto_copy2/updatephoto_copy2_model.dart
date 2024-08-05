import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'updatephoto_copy2_widget.dart' show UpdatephotoCopy2Widget;
import 'package:flutter/material.dart';

class UpdatephotoCopy2Model extends FlutterFlowModel<UpdatephotoCopy2Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<ProductsRow>? uploadedphoto;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
