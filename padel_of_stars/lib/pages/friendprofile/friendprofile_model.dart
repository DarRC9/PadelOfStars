import '/flutter_flow/flutter_flow_util.dart';
import 'friendprofile_widget.dart' show FriendprofileWidget;
import 'package:flutter/material.dart';

class FriendprofileModel extends FlutterFlowModel<FriendprofileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
