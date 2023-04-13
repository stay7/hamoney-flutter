// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'oauth_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OAuthRequest _$OAuthRequestFromJson(Map<String, dynamic> json) {
  return _OAuthRequest.fromJson(json);
}

/// @nodoc
mixin _$OAuthRequest {
  String get token => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OAuthRequestCopyWith<OAuthRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OAuthRequestCopyWith<$Res> {
  factory $OAuthRequestCopyWith(
          OAuthRequest value, $Res Function(OAuthRequest) then) =
      _$OAuthRequestCopyWithImpl<$Res, OAuthRequest>;
  @useResult
  $Res call({String token, String email});
}

/// @nodoc
class _$OAuthRequestCopyWithImpl<$Res, $Val extends OAuthRequest>
    implements $OAuthRequestCopyWith<$Res> {
  _$OAuthRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OAuthRequestCopyWith<$Res>
    implements $OAuthRequestCopyWith<$Res> {
  factory _$$_OAuthRequestCopyWith(
          _$_OAuthRequest value, $Res Function(_$_OAuthRequest) then) =
      __$$_OAuthRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token, String email});
}

/// @nodoc
class __$$_OAuthRequestCopyWithImpl<$Res>
    extends _$OAuthRequestCopyWithImpl<$Res, _$_OAuthRequest>
    implements _$$_OAuthRequestCopyWith<$Res> {
  __$$_OAuthRequestCopyWithImpl(
      _$_OAuthRequest _value, $Res Function(_$_OAuthRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? email = null,
  }) {
    return _then(_$_OAuthRequest(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OAuthRequest with DiagnosticableTreeMixin implements _OAuthRequest {
  const _$_OAuthRequest({required this.token, required this.email});

  factory _$_OAuthRequest.fromJson(Map<String, dynamic> json) =>
      _$$_OAuthRequestFromJson(json);

  @override
  final String token;
  @override
  final String email;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OAuthRequest(token: $token, email: $email)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OAuthRequest'))
      ..add(DiagnosticsProperty('token', token))
      ..add(DiagnosticsProperty('email', email));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OAuthRequest &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OAuthRequestCopyWith<_$_OAuthRequest> get copyWith =>
      __$$_OAuthRequestCopyWithImpl<_$_OAuthRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OAuthRequestToJson(
      this,
    );
  }
}

abstract class _OAuthRequest implements OAuthRequest {
  const factory _OAuthRequest(
      {required final String token,
      required final String email}) = _$_OAuthRequest;

  factory _OAuthRequest.fromJson(Map<String, dynamic> json) =
      _$_OAuthRequest.fromJson;

  @override
  String get token;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$_OAuthRequestCopyWith<_$_OAuthRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
