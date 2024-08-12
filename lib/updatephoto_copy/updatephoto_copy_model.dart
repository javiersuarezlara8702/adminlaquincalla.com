import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'updatephoto_copy_widget.dart' show UpdatephotoCopyWidget;
import 'package:flutter/material.dart';

class UpdatephotoCopyModel extends FlutterFlowModel<UpdatephotoCopyWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<ProductsRow>? uploadedphoto;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
