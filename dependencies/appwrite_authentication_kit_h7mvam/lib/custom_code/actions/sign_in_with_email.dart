// Automatic FlutterFlow imports
import '/actions/actions.dart' as action_blocks;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:appwrite/appwrite.dart';
import 'dart:convert';
import '/custom_code/actions/initialize.dart';

Future<dynamic> signInWithEmail(
  String accountJson,
  String email,
  String password,
) async {
  try {
    // Use the shared account instance
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
    return {
      'success': false,
      'error': e.message, // Raw Appwrite error
      'errorCode': e.code,
      'errorType': e.type,
      'formattedError': handleError(
          e.message, e.code, 'sign in') // Note: lowercase action name
    };
  } catch (e) {
    return {'success': false, 'error': e.toString()};
  }
}
