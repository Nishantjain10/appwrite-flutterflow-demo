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

import 'dart:convert';
import 'package:appwrite/appwrite.dart';

Client client = Client();
late Account account;
late Databases databases;

Future<AppwriteUserResponseStruct> initialize() async {
  try {
    final endpoint = FFLibraryValues().appwriteEndpoint ?? '';
    final projectId = FFLibraryValues().appwriteProjectId ?? '';

    if (endpoint.isEmpty || projectId.isEmpty) {
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
        error: 'Missing configuration values',
        errorCode: 400,
        errorType: 'CONFIG_ERROR',
        formattedError:
            handleError('Missing configuration values', 400, 'initialize'),
      );
    }

    client
        .setEndpoint(endpoint)
        .setProject(projectId)
        .setSelfSigned(status: true);

    account = Account(client);
    databases = Databases(client);

    try {
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
        formattedError: handleError(e.message, e.code, 'initialize'),
      );
    }
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
      formattedError: 'An unexpected error occurred during initialization',
    );
  }
}
