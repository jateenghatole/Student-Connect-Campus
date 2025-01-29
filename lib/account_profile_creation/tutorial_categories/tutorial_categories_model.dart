import '/flutter_flow/flutter_flow_util.dart';
import 'tutorial_categories_widget.dart' show TutorialCategoriesWidget;
import 'package:flutter/material.dart';

class TutorialCategoriesModel
    extends FlutterFlowModel<TutorialCategoriesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
