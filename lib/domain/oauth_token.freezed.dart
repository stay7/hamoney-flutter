// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'oauth_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OAuthToken _$OAuthTokenFromJson(Map<String, dynamic> json) {
  return _OAuthToken.fromJson(json);
}

/// @nodoc
mixin _$OAuthToken {
  String get accessToken => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OAuthTokenCopyWith<OAuthToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OAuthTokenCopyWith<$Res> {
  factory $OAuthTokenCopyWith(
          OAuthToken value, $Res Function(OAuthToken) then) =
      _$OAuthTokenCopyWithImpl<$Res, OAuthToken>;
  @useResult
  $Res call({String accessToken, String refreshToken});
}

/// @nodoc
class _$OAuthTokenCopyWithImpl<$Res, $Val extends OAuthToken>
    implements $OAuthTokenCopyWith<$Res> {
  _$OAuthTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_OAuthTokenCopyWith<$Res>
    implements $OAuthTokenCopyWith<$Res> {
  factory _$$_OAuthTokenCopyWith(
          _$_OAuthToken value, $Res Function(_$_OAuthToken) then) =
      __$$_OAuthTokenCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String accessToken, String refreshToken});
}

/// @nodoc
class __$$_OAuthTokenCopyWithImpl<$Res>
    extends _$OAuthTokenCopyWithImpl<$Res, _$_OAuthToken>
    implements _$$_OAuthTokenCopyWith<$Res> {
  __$$_OAuthTokenCopyWithImpl(
      _$_OAuthToken _value, $Res Function(_$_OAuthToken) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_$_OAuthToken(
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
class _$_OAuthToken implements _OAuthToken {
  const _$_OAuthToken({required this.accessToken, required this.refreshToken});

  factory _$_OAuthToken.fromJson(Map<String, dynamic> json) =>
      _$$_OAuthTokenFromJson(json);

  @override
  final String accessToken;
  @override
  final String refreshToken;

  @override
  String toString() {
    return 'OAuthToken(accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OAuthToken &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, refreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OAuthTokenCopyWith<_$_OAuthToken> get copyWith =>
      __$$_OAuthTokenCopyWithImpl<_$_OAuthToken>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OAuthTokenToJson(
      this,
    );
  }
}

abstract class _OAuthToken implements OAuthToken {
  const factory _OAuthToken(
      {required final String accessToken,
      required final String refreshToken}) = _$_OAuthToken;

  factory _OAuthToken.fromJson(Map<String, dynamic> json) =
      _$_OAuthToken.fromJson;

  @override
  String get accessToken;
  @override
  String get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$_OAuthTokenCopyWith<_$_OAuthToken> get copyWith =>
      throw _privateConstructorUsedError;
}
