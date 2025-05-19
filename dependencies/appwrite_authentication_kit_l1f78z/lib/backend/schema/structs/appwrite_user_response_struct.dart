// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AppwriteUserResponseStruct extends BaseStruct {
  AppwriteUserResponseStruct({
    AppwriteUserStruct? user,
    bool? success,
    String? error,
    int? errorCode,
    String? errorType,
    String? formattedError,
  })  : _user = user,
        _success = success,
        _error = error,
        _errorCode = errorCode,
        _errorType = errorType,
        _formattedError = formattedError;

  // "user" field.
  AppwriteUserStruct? _user;
  AppwriteUserStruct get user => _user ?? AppwriteUserStruct();
  set user(AppwriteUserStruct? val) => _user = val;

  void updateUser(Function(AppwriteUserStruct) updateFn) {
    updateFn(_user ??= AppwriteUserStruct());
  }

  bool hasUser() => _user != null;

  // "success" field.
  bool? _success;
  bool get success => _success ?? false;
  set success(bool? val) => _success = val;

  bool hasSuccess() => _success != null;

  // "error" field.
  String? _error;
  String get error => _error ?? '';
  set error(String? val) => _error = val;

  bool hasError() => _error != null;

  // "errorCode" field.
  int? _errorCode;
  int get errorCode => _errorCode ?? 0;
  set errorCode(int? val) => _errorCode = val;

  void incrementErrorCode(int amount) => errorCode = errorCode + amount;

  bool hasErrorCode() => _errorCode != null;

  // "errorType" field.
  String? _errorType;
  String get errorType => _errorType ?? '';
  set errorType(String? val) => _errorType = val;

  bool hasErrorType() => _errorType != null;

  // "formattedError" field.
  String? _formattedError;
  String get formattedError => _formattedError ?? '';
  set formattedError(String? val) => _formattedError = val;

  bool hasFormattedError() => _formattedError != null;

  static AppwriteUserResponseStruct fromMap(Map<String, dynamic> data) =>
      AppwriteUserResponseStruct(
        user: data['user'] is AppwriteUserStruct
            ? data['user']
            : AppwriteUserStruct.maybeFromMap(data['user']),
        success: data['success'] as bool?,
        error: data['error'] as String?,
        errorCode: castToType<int>(data['errorCode']),
        errorType: data['errorType'] as String?,
        formattedError: data['formattedError'] as String?,
      );

  static AppwriteUserResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? AppwriteUserResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'user': _user?.toMap(),
        'success': _success,
        'error': _error,
        'errorCode': _errorCode,
        'errorType': _errorType,
        'formattedError': _formattedError,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'user': serializeParam(
          _user,
          ParamType.DataStruct,
        ),
        'success': serializeParam(
          _success,
          ParamType.bool,
        ),
        'error': serializeParam(
          _error,
          ParamType.String,
        ),
        'errorCode': serializeParam(
          _errorCode,
          ParamType.int,
        ),
        'errorType': serializeParam(
          _errorType,
          ParamType.String,
        ),
        'formattedError': serializeParam(
          _formattedError,
          ParamType.String,
        ),
      }.withoutNulls;

  static AppwriteUserResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AppwriteUserResponseStruct(
        user: deserializeStructParam(
          data['user'],
          ParamType.DataStruct,
          false,
          structBuilder: AppwriteUserStruct.fromSerializableMap,
        ),
        success: deserializeParam(
          data['success'],
          ParamType.bool,
          false,
        ),
        error: deserializeParam(
          data['error'],
          ParamType.String,
          false,
        ),
        errorCode: deserializeParam(
          data['errorCode'],
          ParamType.int,
          false,
        ),
        errorType: deserializeParam(
          data['errorType'],
          ParamType.String,
          false,
        ),
        formattedError: deserializeParam(
          data['formattedError'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AppwriteUserResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AppwriteUserResponseStruct &&
        user == other.user &&
        success == other.success &&
        error == other.error &&
        errorCode == other.errorCode &&
        errorType == other.errorType &&
        formattedError == other.formattedError;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([user, success, error, errorCode, errorType, formattedError]);
}

AppwriteUserResponseStruct createAppwriteUserResponseStruct({
  AppwriteUserStruct? user,
  bool? success,
  String? error,
  int? errorCode,
  String? errorType,
  String? formattedError,
}) =>
    AppwriteUserResponseStruct(
      user: user ?? AppwriteUserStruct(),
      success: success,
      error: error,
      errorCode: errorCode,
      errorType: errorType,
      formattedError: formattedError,
    );
