import '/flutter_flow/flutter_flow_util.dart';
import 'tutorial6_widget.dart' show Tutorial6Widget;
import 'package:flutter/material.dart';

class Tutorial6Model extends FlutterFlowModel<Tutorial6Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
