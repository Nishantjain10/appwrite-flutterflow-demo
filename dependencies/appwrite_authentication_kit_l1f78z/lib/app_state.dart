import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  /// Stores the authenticated user's profile and session details (id, email,
  /// name, status, etc.) globally so user info is accessible throughout the
  /// app.
  AppwriteUserStruct _appwriteUser = AppwriteUserStruct.fromSerializableMap(
      jsonDecode('{\"emailVerified\":\"false\"}'));
  AppwriteUserStruct get appwriteUser => _appwriteUser;
  set appwriteUser(AppwriteUserStruct value) {
    _appwriteUser = value;
  }

  void updateAppwriteUserStruct(Function(AppwriteUserStruct) updateFn) {
    updateFn(_appwriteUser);
  }
}
