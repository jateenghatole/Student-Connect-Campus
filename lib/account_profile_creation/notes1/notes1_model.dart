import '/flutter_flow/flutter_flow_util.dart';
import 'notes1_widget.dart' show Notes1Widget;
import 'package:flutter/material.dart';

class Notes1Model extends FlutterFlowModel<Notes1Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
