import 'package:flutter/material.dart';
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

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _appwriteConfig = prefs.getString('ff_appwriteConfig') ?? _appwriteConfig;
    });
    _safeInit(() {
      _appwriteUser = prefs.getString('ff_appwriteUser') ?? _appwriteUser;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _appwriteConfig = '';
  String get appwriteConfig => _appwriteConfig;
  set appwriteConfig(String value) {
    _appwriteConfig = value;
    prefs.setString('ff_appwriteConfig', value);
  }

  String _appwriteUser = '';
  String get appwriteUser => _appwriteUser;
  set appwriteUser(String value) {
    _appwriteUser = value;
    prefs.setString('ff_appwriteUser', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
