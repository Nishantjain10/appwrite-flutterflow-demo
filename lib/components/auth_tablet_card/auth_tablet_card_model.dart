import '/flutter_flow/flutter_flow_util.dart';
import "package:appwrite_authentication_kit_l1f78z/backend/schema/structs/index.dart"
    as appwrite_authentication_kit_l1f78z_data_schema;
import 'auth_tablet_card_widget.dart' show AuthTabletCardWidget;
import 'package:flutter/material.dart';

class AuthTabletCardModel extends FlutterFlowModel<AuthTabletCardWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // Stores action output result for [Custom Action - signUpWithEmailAndPassword] action in Button widget.
  appwrite_authentication_kit_l1f78z_data_schema.AppwriteUserResponseStruct?
      signUpResult;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();
  }
}
