import '/flutter_flow/flutter_flow_util.dart';
import 'tutorial2_widget.dart' show Tutorial2Widget;
import 'package:flutter/material.dart';

class Tutorial2Model extends FlutterFlowModel<Tutorial2Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
