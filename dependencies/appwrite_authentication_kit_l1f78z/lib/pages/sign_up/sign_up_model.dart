import '/components/auth_signup_desktop_card/auth_signup_desktop_card_widget.dart';
import '/components/auth_signup_mobile_card/auth_signup_mobile_card_widget.dart';
import '/components/auth_signup_tablet_card/auth_signup_tablet_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'sign_up_widget.dart' show SignUpWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignUpModel extends FlutterFlowModel<SignUpWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for authSignupDesktopCard component.
  late AuthSignupDesktopCardModel authSignupDesktopCardModel;
  // Model for authSignupTabletCard component.
  late AuthSignupTabletCardModel authSignupTabletCardModel;
  // Model for authSignupMobileCard component.
  late AuthSignupMobileCardModel authSignupMobileCardModel;

  @override
  void initState(BuildContext context) {
    authSignupDesktopCardModel =
        createModel(context, () => AuthSignupDesktopCardModel());
    authSignupTabletCardModel =
        createModel(context, () => AuthSignupTabletCardModel());
    authSignupMobileCardModel =
        createModel(context, () => AuthSignupMobileCardModel());
  }

  @override
  void dispose() {
    authSignupDesktopCardModel.dispose();
    authSignupTabletCardModel.dispose();
    authSignupMobileCardModel.dispose();
  }
}
