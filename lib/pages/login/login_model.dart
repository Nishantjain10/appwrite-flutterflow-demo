import '/components/auth_login_desktop_card/auth_login_desktop_card_widget.dart';
import '/components/auth_login_mobile_card/auth_login_mobile_card_widget.dart';
import '/components/auth_login_tablet_card/auth_login_tablet_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for authLoginDesktopCard component.
  late AuthLoginDesktopCardModel authLoginDesktopCardModel;
  // Model for authLoginTabletCard component.
  late AuthLoginTabletCardModel authLoginTabletCardModel;
  // Model for authLoginMobileCard component.
  late AuthLoginMobileCardModel authLoginMobileCardModel;

  @override
  void initState(BuildContext context) {
    authLoginDesktopCardModel =
        createModel(context, () => AuthLoginDesktopCardModel());
    authLoginTabletCardModel =
        createModel(context, () => AuthLoginTabletCardModel());
    authLoginMobileCardModel =
        createModel(context, () => AuthLoginMobileCardModel());
  }

  @override
  void dispose() {
    authLoginDesktopCardModel.dispose();
    authLoginTabletCardModel.dispose();
    authLoginMobileCardModel.dispose();
  }
}
