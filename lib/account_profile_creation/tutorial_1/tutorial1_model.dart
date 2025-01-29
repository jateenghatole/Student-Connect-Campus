import '/flutter_flow/flutter_flow_util.dart';
import 'tutorial1_widget.dart' show Tutorial1Widget;
import 'package:flutter/material.dart';

class Tutorial1Model extends FlutterFlowModel<Tutorial1Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
