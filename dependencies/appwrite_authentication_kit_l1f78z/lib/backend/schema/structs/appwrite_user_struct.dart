// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AppwriteUserStruct extends BaseStruct {
  AppwriteUserStruct({
    String? id,
    String? email,
    String? name,
    bool? emailVerified,
    String? status,
  })  : _id = id,
        _email = email,
        _name = name,
        _emailVerified = emailVerified,
        _status = status;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "emailVerified" field.
  bool? _emailVerified;
  bool get emailVerified => _emailVerified ?? false;
  set emailVerified(bool? val) => _emailVerified = val;

  bool hasEmailVerified() => _emailVerified != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  static AppwriteUserStruct fromMap(Map<String, dynamic> data) =>
      AppwriteUserStruct(
        id: data['id'] as String?,
        email: data['email'] as String?,
        name: data['name'] as String?,
        emailVerified: data['emailVerified'] as bool?,
        status: data['status'] as String?,
      );

  static AppwriteUserStruct? maybeFromMap(dynamic data) => data is Map
      ? AppwriteUserStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'email': _email,
        'name': _name,
        'emailVerified': _emailVerified,
        'status': _status,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'emailVerified': serializeParam(
          _emailVerified,
          ParamType.bool,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
      }.withoutNulls;

  static AppwriteUserStruct fromSerializableMap(Map<String, dynamic> data) =>
      AppwriteUserStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        emailVerified: deserializeParam(
          data['emailVerified'],
          ParamType.bool,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AppwriteUserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AppwriteUserStruct &&
        id == other.id &&
        email == other.email &&
        name == other.name &&
        emailVerified == other.emailVerified &&
        status == other.status;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, email, name, emailVerified, status]);
}

AppwriteUserStruct createAppwriteUserStruct({
  String? id,
  String? email,
  String? name,
  bool? emailVerified,
  String? status,
}) =>
    AppwriteUserStruct(
      id: id,
      email: email,
      name: name,
      emailVerified: emailVerified,
      status: status,
    );
