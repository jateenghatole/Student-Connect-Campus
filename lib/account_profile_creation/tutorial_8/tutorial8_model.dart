import '/flutter_flow/flutter_flow_util.dart';
import 'tutorial8_widget.dart' show Tutorial8Widget;
import 'package:flutter/material.dart';

class Tutorial8Model extends FlutterFlowModel<Tutorial8Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
