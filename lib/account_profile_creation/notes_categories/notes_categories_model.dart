import '/flutter_flow/flutter_flow_util.dart';
import 'notes_categories_widget.dart' show NotesCategoriesWidget;
import 'package:flutter/material.dart';

class NotesCategoriesModel extends FlutterFlowModel<NotesCategoriesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
