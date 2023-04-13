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
      {String id,
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
    Object? id = null,
    Object? email = null,
    Object? nickname = null,
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_value.copyWith(
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
      {String id,
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
    Object? id = null,
    Object? email = null,
    Object? nickname = null,
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_$_SignupResponse(
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
class _$_SignupResponse implements _SignupResponse {
  _$_SignupResponse(
      {required this.id,
      required this.email,
      required this.nickname,
      required this.accessToken,
      required this.refreshToken});

  factory _$_SignupResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SignupResponseFromJson(json);

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
  String toString() {
    return 'SignupResponse(id: $id, email: $email, nickname: $nickname, accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignupResponse &&
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
  int get hashCode =>
      Object.hash(runtimeType, id, email, nickname, accessToken, refreshToken);

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
  factory _SignupResponse(
      {required final String id,
      required final String email,
      required final String nickname,
      required final String accessToken,
      required final String refreshToken}) = _$_SignupResponse;

  factory _SignupResponse.fromJson(Map<String, dynamic> json) =
      _$_SignupResponse.fromJson;

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
