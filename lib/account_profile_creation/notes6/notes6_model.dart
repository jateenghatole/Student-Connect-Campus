import '/flutter_flow/flutter_flow_util.dart';
import 'notes6_widget.dart' show Notes6Widget;
import 'package:flutter/material.dart';

class Notes6Model extends FlutterFlowModel<Notes6Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
