import '/flutter_flow/flutter_flow_util.dart';
import 'tutorial7_widget.dart' show Tutorial7Widget;
import 'package:flutter/material.dart';

class Tutorial7Model extends FlutterFlowModel<Tutorial7Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
