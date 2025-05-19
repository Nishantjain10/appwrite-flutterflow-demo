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

import '/custom_code/actions/index.dart';
import '/flutter_flow/custom_functions.dart';

import 'package:appwrite/appwrite.dart';

Future<AppwriteUserResponseStruct> signInWithEmail(
  String email,
  String password,
) async {
  try {
    // Initialize Appwrite client
    final client = Client()
        .setEndpoint(FFLibraryValues().appwriteEndpoint ?? '')
        .setProject(FFLibraryValues().appwriteProjectId ?? '')
        .setSelfSigned(status: true);

    // Initialize Account
    final account = Account(client);

    await account.createEmailPasswordSession(
      email: email,
      password: password,
    );

    final user = await account.get();

    final userData = AppwriteUserStruct(
      id: user.$id ?? '',
      email: user.email ?? '',
      name: user.name ?? '',
      emailVerified: user.emailVerification ?? false,
      status: user.status.toString(),
    );

    FFAppState().update(() {
      FFAppState().appwriteUser = userData;
    });

    return AppwriteUserResponseStruct(
      success: true,
      user: userData,
    );
  } on AppwriteException catch (e) {
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
      formattedError: handleError(e.message, e.code, 'sign in'),
    );
  } catch (e) {
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
      formattedError: 'An unexpected error occurred during sign in',
    );
  }
}
