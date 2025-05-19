import '/components/btn_sign_out_desktop/btn_sign_out_desktop_widget.dart';
import '/components/btn_sign_out_mobile/btn_sign_out_mobile_widget.dart';
import '/components/btn_sign_out_tablet/btn_sign_out_tablet_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dashboard_widget.dart' show DashboardWidget;
import 'package:flutter/material.dart';

class DashboardModel extends FlutterFlowModel<DashboardWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for btnSignOutMobile component.
  late BtnSignOutMobileModel btnSignOutMobileModel;
  // Model for btnSignOutTablet component.
  late BtnSignOutTabletModel btnSignOutTabletModel;
  // Model for btnSignOutDesktop component.
  late BtnSignOutDesktopModel btnSignOutDesktopModel;

  @override
  void initState(BuildContext context) {
    btnSignOutMobileModel = createModel(context, () => BtnSignOutMobileModel());
    btnSignOutTabletModel = createModel(context, () => BtnSignOutTabletModel());
    btnSignOutDesktopModel =
        createModel(context, () => BtnSignOutDesktopModel());
  }

  @override
  void dispose() {
    btnSignOutMobileModel.dispose();
    btnSignOutTabletModel.dispose();
    btnSignOutDesktopModel.dispose();
  }
}
