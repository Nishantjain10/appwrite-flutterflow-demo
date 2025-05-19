import '/flutter_flow/flutter_flow_util.dart';
import "package:appwrite_authentication_kit_l1f78z/backend/schema/structs/index.dart"
    as appwrite_authentication_kit_l1f78z_data_schema;
import 'auth_login_mobile_card_widget.dart' show AuthLoginMobileCardWidget;
import 'package:flutter/material.dart';

class AuthLoginMobileCardModel
    extends FlutterFlowModel<AuthLoginMobileCardWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // Stores action output result for [Custom Action - signInWithEmail] action in Button widget.
  appwrite_authentication_kit_l1f78z_data_schema.AppwriteUserResponseStruct?
      signInResult;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();
  }
}
