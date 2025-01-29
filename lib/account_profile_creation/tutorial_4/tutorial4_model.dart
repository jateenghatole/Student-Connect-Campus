import '/flutter_flow/flutter_flow_util.dart';
import 'tutorial4_widget.dart' show Tutorial4Widget;
import 'package:flutter/material.dart';

class Tutorial4Model extends FlutterFlowModel<Tutorial4Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
