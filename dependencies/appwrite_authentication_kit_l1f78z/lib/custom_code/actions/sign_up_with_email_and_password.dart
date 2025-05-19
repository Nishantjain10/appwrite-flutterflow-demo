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

Future<AppwriteUserResponseStruct> signUpWithEmailAndPassword(
  String email,
  String password,
  String name,
) async {
  try {
    // Create user account
    final newUser = await account.create(
      userId: ID.unique(),
      email: email,
      password: password,
      name: name,
    );

    // Create email session
    await account.createEmailPasswordSession(
      email: email,
      password: password,
    );

    // Create AppwriteUserStruct
    final userData = AppwriteUserStruct(
      id: newUser.$id ?? '',
      email: newUser.email ?? '',
      name: newUser.name ?? '',
      emailVerified: newUser.emailVerification ?? false,
      status: newUser.status.toString(),
    );

    // Store in AppState
    FFAppState().update(() {
      FFAppState().appwriteUser = userData;
    });

    // Return success response
    return AppwriteUserResponseStruct(
      success: true,
      user: userData,
    );
  } on AppwriteException catch (e) {
    // Handle Appwrite-specific errors
    FFAppState().update(() {
      FFAppState().appwriteUser = AppwriteUserStruct(
        id: '',
        email: '',
        name: '',
        emailVerified: false,
        status: '',
      );
    });
    return AppwriteUserResponseStruct(
      success: false,
      error: e.message,
      errorCode: e.code,
      errorType: e.type,
      formattedError: handleError(e.message, e.code, 'sign up'),
    );
  } catch (e) {
    // Handle unexpected errors
    FFAppState().update(() {
      FFAppState().appwriteUser = AppwriteUserStruct(
        id: '',
        email: '',
        name: '',
        emailVerified: false,
        status: '',
      );
    });
    return AppwriteUserResponseStruct(
      success: false,
      error: e.toString(),
      errorCode: 500,
      errorType: 'UNKNOWN_ERROR',
      formattedError: 'An unexpected error occurred during sign up',
    );
  }
}
