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
export 'initialize.dart';

// Initialize client - will be configured during initialize()
final Client client = Client();

// Initialize account ONCE using the single client instance
final Account account = Account(client);

Future<dynamic> initialize(
  String endpoint,
  String projectId,
) async {
  try {
    // Configure client with provided parameters
    client
      ..setEndpoint(endpoint)
      ..setProject(projectId)
      ..setSelfSigned(status: true);

    // Validate config
    if (endpoint.isEmpty || projectId.isEmpty) {
      return {
        'success': false,
        'error': 'Configuration error: Missing endpoint or project ID'
      };
    }
    // Store config
    FFAppState().appwriteConfig = jsonEncode(
        {"endpoint": endpoint, "projectId": projectId, "initialized": true});
    // Get and store user data
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
      'error': e.message,
      'errorCode': e.code,
      'errorType': e.type,
      'formattedError': handleError(e.message, e.code, 'initialize')
    };
  } catch (e) {
    return {'success': false, 'error': e.toString()};
  }
}
