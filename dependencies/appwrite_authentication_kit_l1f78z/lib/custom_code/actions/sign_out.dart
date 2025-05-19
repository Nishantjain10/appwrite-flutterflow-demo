// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'package:appwrite/appwrite.dart';
import '/custom_code/actions/initialize.dart';

Future<AppwriteUserResponseStruct> signOut() async {
  try {
    // Delete current session
    await account.deleteSession(sessionId: 'current');

    // Clear app state
    FFAppState().update(() {
      FFAppState().appwriteUser = AppwriteUserStruct(
        id: '',
        email: '',
        name: '',
        emailVerified: false,
        status: '',
      );
    });

    // Return success response
    return AppwriteUserResponseStruct(
      success: true,
    );
  } on AppwriteException catch (e) {
    // Handle Appwrite-specific errors
    return AppwriteUserResponseStruct(
      success: false,
      error: e.message,
      errorCode: e.code,
      errorType: e.type,
      formattedError: handleError(e.message, e.code, 'sign out'),
    );
  } catch (e) {
    // Handle unexpected errors
    return AppwriteUserResponseStruct(
      success: false,
      error: e.toString(),
      errorCode: 500,
      errorType: 'UNKNOWN_ERROR',
      formattedError: 'An unexpected error occurred during sign out',
    );
  }
}
