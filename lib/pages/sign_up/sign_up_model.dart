import '/components/auth_desktop_card/auth_desktop_card_widget.dart';
import '/components/auth_mobile_card/auth_mobile_card_widget.dart';
import '/components/auth_tablet_card/auth_tablet_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'sign_up_widget.dart' show SignUpWidget;
import 'package:flutter/material.dart';

class SignUpModel extends FlutterFlowModel<SignUpWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for authDesktopCard component.
  late AuthDesktopCardModel authDesktopCardModel;
  // Model for authTabletCard component.
  late AuthTabletCardModel authTabletCardModel;
  // Model for authMobileCard component.
  late AuthMobileCardModel authMobileCardModel;

  @override
  void initState(BuildContext context) {
    authDesktopCardModel = createModel(context, () => AuthDesktopCardModel());
    authTabletCardModel = createModel(context, () => AuthTabletCardModel());
    authMobileCardModel = createModel(context, () => AuthMobileCardModel());
  }

  @override
  void dispose() {
    authDesktopCardModel.dispose();
    authTabletCardModel.dispose();
    authMobileCardModel.dispose();
  }
}
