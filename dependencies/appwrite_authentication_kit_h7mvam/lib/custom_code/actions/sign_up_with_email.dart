// Automatic FlutterFlow imports
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
import 'dart:convert';
import '/custom_code/actions/initialize.dart';

Future<dynamic> signUpWithEmail(
  String accountJson,
  String email,
  String password,
  String? name,
) async {
  try {
    // First try to create the account
    try {
      await account.create(
        userId: ID.unique(),
        email: email,
        password: password,
        name: name ?? '',
      );
    } on AppwriteException catch (e) {
      // Handle account creation errors
      return {
        'success': false,
        'error': e.message,
        'errorCode': e.code,
        'errorType': e.type,
        'formattedError': handleError(e.message, e.code, 'sign up')
      };
    }

    // If account creation successful, try to create session
    try {
      await account.createEmailPasswordSession(
        email: email,
        password: password,
      );

      // Get and store user data after successful login
      final user = await account.get();
      FFAppState().appwriteUser = jsonEncode({
        'id': user.$id,
        'email': user.email,
        'name': user.name,
        'emailVerified': user.emailVerification,
        'status': user.status,
      });

      return true;
    } on AppwriteException catch (e) {
      // Handle session creation errors
      return {
        'success': false,
        'error': e.message,
        'errorCode': e.code,
        'errorType': e.type,
        'formattedError': handleError(e.message, e.code, 'sign in')
      };
    }
  } catch (e) {
    return {'success': false, 'error': e.toString()};
  }
}
