import '/flutter_flow/flutter_flow_util.dart';
import 'notes4_widget.dart' show Notes4Widget;
import 'package:flutter/material.dart';

class Notes4Model extends FlutterFlowModel<Notes4Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
