import '/flutter_flow/flutter_flow_util.dart';
import 'notes3_widget.dart' show Notes3Widget;
import 'package:flutter/material.dart';

class Notes3Model extends FlutterFlowModel<Notes3Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
