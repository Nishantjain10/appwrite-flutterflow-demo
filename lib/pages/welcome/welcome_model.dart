import '/components/splash_desktop_card/splash_desktop_card_widget.dart';
import '/components/splash_mobile_card/splash_mobile_card_widget.dart';
import '/components/splash_tablet_card/splash_tablet_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import "package:appwrite_authentication_kit_l1f78z/backend/schema/structs/index.dart"
    as appwrite_authentication_kit_l1f78z_data_schema;
import '/index.dart';
import 'welcome_widget.dart' show WelcomeWidget;
import 'package:flutter/material.dart';

class WelcomeModel extends FlutterFlowModel<WelcomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - initialize] action in Welcome widget.
  appwrite_authentication_kit_l1f78z_data_schema.AppwriteUserResponseStruct?
      initializeResult;
  // Model for splashMobileCard component.
  late SplashMobileCardModel splashMobileCardModel;
  // Model for splashTabletCard component.
  late SplashTabletCardModel splashTabletCardModel;
  // Model for splashDesktopCard component.
  late SplashDesktopCardModel splashDesktopCardModel;

  @override
  void initState(BuildContext context) {
    splashMobileCardModel = createModel(context, () => SplashMobileCardModel());
    splashTabletCardModel = createModel(context, () => SplashTabletCardModel());
    splashDesktopCardModel =
        createModel(context, () => SplashDesktopCardModel());
  }

  @override
  void dispose() {
    splashMobileCardModel.dispose();
    splashTabletCardModel.dispose();
    splashDesktopCardModel.dispose();
  }
}
