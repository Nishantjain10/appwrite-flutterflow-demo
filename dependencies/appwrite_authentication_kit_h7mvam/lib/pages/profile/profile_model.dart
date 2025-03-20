import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'profile_widget.dart' show ProfileWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - getCurrentUser] action in Profile widget.
  dynamic? userResult;
  // Stores action output result for [Custom Action - signOut] action in Button widget.
  dynamic? signOutResult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
