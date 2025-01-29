import '/flutter_flow/flutter_flow_util.dart';
import 'tutorial3_widget.dart' show Tutorial3Widget;
import 'package:flutter/material.dart';

class Tutorial3Model extends FlutterFlowModel<Tutorial3Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
