import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:appwrite_authentication_kit_l1f78z/custom_code/actions/index.dart'
    as appwrite_authentication_kit_l1f78z_actions;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'btn_sign_out_mobile_model.dart';
export 'btn_sign_out_mobile_model.dart';

class BtnSignOutMobileWidget extends StatefulWidget {
  const BtnSignOutMobileWidget({super.key});

  @override
  State<BtnSignOutMobileWidget> createState() => _BtnSignOutMobileWidgetState();
}

class _BtnSignOutMobileWidgetState extends State<BtnSignOutMobileWidget> {
  late BtnSignOutMobileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BtnSignOutMobileModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(1.0, 0.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
        child: FFButtonWidget(
          onPressed: () async {
            var _shouldSetState = false;
            _model.signOutResult =
                await appwrite_authentication_kit_l1f78z_actions.signOut();
            _shouldSetState = true;
            if (_model.signOutResult!.success) {
              context.pushNamed(WelcomeWidget.routeName);

              if (_shouldSetState) safeSetState(() {});
              return;
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    _model.signOutResult!.formattedError,
                    style: TextStyle(
                      color: Color(0xFF19191C),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  duration: Duration(milliseconds: 3900),
                  backgroundColor: Colors.white,
                ),
              );
              if (_shouldSetState) safeSetState(() {});
              return;
            }

            if (_shouldSetState) safeSetState(() {});
          },
          text: 'Sign out',
          options: FFButtonOptions(
            width: 75.0,
            height: 32.0,
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 6.0),
            iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
            color: Colors.white,
            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                  font: GoogleFonts.interTight(
                    fontWeight: FontWeight.w600,
                    fontStyle:
                        FlutterFlowTheme.of(context).titleSmall.fontStyle,
                  ),
                  color: Color(0xFF56565C),
                  fontSize: 14.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                  fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                ),
            elevation: 0.0,
            borderSide: BorderSide(
              color: Color(0xFFD8D8DB),
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }
}
