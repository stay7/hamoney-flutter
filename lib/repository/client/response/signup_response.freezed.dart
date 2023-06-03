// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignupResponse _$SignupResponseFromJson(Map<String, dynamic> json) {
  return _SignupResponse.fromJson(json);
}

/// @nodoc
mixin _$SignupResponse {
  String? get message => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  String get accessToken => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignupResponseCopyWith<SignupResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupResponseCopyWith<$Res> {
  factory $SignupResponseCopyWith(
          SignupResponse value, $Res Function(SignupResponse) then) =
      _$SignupResponseCopyWithImpl<$Res, SignupResponse>;
  @useResult
  $Res call(
      {String? message,
      int status,
      String id,
      String email,
      String nickname,
      String accessToken,
      String refreshToken});
}

/// @nodoc
class _$SignupResponseCopyWithImpl<$Res, $Val extends SignupResponse>
    implements $SignupResponseCopyWith<$Res> {
  _$SignupResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? status = null,
    Object? id = null,
    Object? email = null,
    Object? nickname = null,
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignupResponseCopyWith<$Res>
    implements $SignupResponseCopyWith<$Res> {
  factory _$$_SignupResponseCopyWith(
          _$_SignupResponse value, $Res Function(_$_SignupResponse) then) =
      __$$_SignupResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? message,
      int status,
      String id,
      String email,
      String nickname,
      String accessToken,
      String refreshToken});
}

/// @nodoc
class __$$_SignupResponseCopyWithImpl<$Res>
    extends _$SignupResponseCopyWithImpl<$Res, _$_SignupResponse>
    implements _$$_SignupResponseCopyWith<$Res> {
  __$$_SignupResponseCopyWithImpl(
      _$_SignupResponse _value, $Res Function(_$_SignupResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? status = null,
    Object? id = null,
    Object? email = null,
    Object? nickname = null,
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_$_SignupResponse(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignupResponse
    with DiagnosticableTreeMixin
    implements _SignupResponse {
  const _$_SignupResponse(
      {this.message,
      required this.status,
      required this.id,
      required this.email,
      required this.nickname,
      required this.accessToken,
      required this.refreshToken});

  factory _$_SignupResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SignupResponseFromJson(json);

  @override
  final String? message;
  @override
  final int status;
  @override
  final String id;
  @override
  final String email;
  @override
  final String nickname;
  @override
  final String accessToken;
  @override
  final String refreshToken;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignupResponse(message: $message, status: $status, id: $id, email: $email, nickname: $nickname, accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignupResponse'))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('nickname', nickname))
      ..add(DiagnosticsProperty('accessToken', accessToken))
      ..add(DiagnosticsProperty('refreshToken', refreshToken));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignupResponse &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, status, id, email,
      nickname, accessToken, refreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignupResponseCopyWith<_$_SignupResponse> get copyWith =>
      __$$_SignupResponseCopyWithImpl<_$_SignupResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SignupResponseToJson(
      this,
    );
  }
}

abstract class _SignupResponse implements SignupResponse {
  const factory _SignupResponse(
      {final String? message,
      required final int status,
      required final String id,
      required final String email,
      required final String nickname,
      required final String accessToken,
      required final String refreshToken}) = _$_SignupResponse;

  factory _SignupResponse.fromJson(Map<String, dynamic> json) =
      _$_SignupResponse.fromJson;

  @override
  String? get message;
  @override
  int get status;
  @override
  String get id;
  @override
  String get email;
  @override
  String get nickname;
  @override
  String get accessToken;
  @override
  String get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$_SignupResponseCopyWith<_$_SignupResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
