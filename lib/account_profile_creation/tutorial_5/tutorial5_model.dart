import '/flutter_flow/flutter_flow_util.dart';
import 'tutorial5_widget.dart' show Tutorial5Widget;
import 'package:flutter/material.dart';

class Tutorial5Model extends FlutterFlowModel<Tutorial5Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
