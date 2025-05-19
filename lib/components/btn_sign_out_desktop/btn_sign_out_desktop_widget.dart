import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:appwrite_authentication_kit_l1f78z/custom_code/actions/index.dart'
    as appwrite_authentication_kit_l1f78z_actions;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'btn_sign_out_desktop_model.dart';
export 'btn_sign_out_desktop_model.dart';

class BtnSignOutDesktopWidget extends StatefulWidget {
  const BtnSignOutDesktopWidget({super.key});

  @override
  State<BtnSignOutDesktopWidget> createState() =>
      _BtnSignOutDesktopWidgetState();
}

class _BtnSignOutDesktopWidgetState extends State<BtnSignOutDesktopWidget> {
  late BtnSignOutDesktopModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BtnSignOutDesktopModel());

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
            _model.signOutResult =
                await appwrite_authentication_kit_l1f78z_actions.signOut();
            if (_model.signOutResult!.success) {
              context.pushNamed(WelcomeWidget.routeName);
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
            }

            safeSetState(() {});
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
