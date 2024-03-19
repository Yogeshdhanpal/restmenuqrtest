import '/flutter_flow/flutter_flow_util.dart';
import 'pos_item_widget.dart' show PosItemWidget;
import 'package:flutter/material.dart';

class PosItemModel extends FlutterFlowModel<PosItemWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for SearchTF widget.
  FocusNode? searchTFFocusNode;
  TextEditingController? searchTFController;
  String? Function(BuildContext, String?)? searchTFControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    searchTFFocusNode?.dispose();
    searchTFController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
