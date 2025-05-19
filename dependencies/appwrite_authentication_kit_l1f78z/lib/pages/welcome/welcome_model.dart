import '/backend/schema/structs/index.dart';
import '/components/splash_desktop_card/splash_desktop_card_widget.dart';
import '/components/splash_mobile_card/splash_mobile_card_widget.dart';
import '/components/splash_tablet_card/splash_tablet_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'welcome_widget.dart' show WelcomeWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WelcomeModel extends FlutterFlowModel<WelcomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - initialize] action in Welcome widget.
  AppwriteUserResponseStruct? initializeResult;
  // Model for splashMobileCard component.
  late SplashMobileCardModel splashMobileCardModel;
  // Model for splashDesktopCard component.
  late SplashDesktopCardModel splashDesktopCardModel;
  // Model for splashTabletCard component.
  late SplashTabletCardModel splashTabletCardModel;

  @override
  void initState(BuildContext context) {
    splashMobileCardModel = createModel(context, () => SplashMobileCardModel());
    splashDesktopCardModel =
        createModel(context, () => SplashDesktopCardModel());
    splashTabletCardModel = createModel(context, () => SplashTabletCardModel());
  }

  @override
  void dispose() {
    splashMobileCardModel.dispose();
    splashDesktopCardModel.dispose();
    splashTabletCardModel.dispose();
  }
}
