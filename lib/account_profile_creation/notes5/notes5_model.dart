import '/flutter_flow/flutter_flow_util.dart';
import 'notes5_widget.dart' show Notes5Widget;
import 'package:flutter/material.dart';

class Notes5Model extends FlutterFlowModel<Notes5Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
