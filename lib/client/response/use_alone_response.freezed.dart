// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'use_alone_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UseAloneResponse _$UseAloneResponseFromJson(Map<String, dynamic> json) {
  return _UseAloneResponse.fromJson(json);
}

/// @nodoc
mixin _$UseAloneResponse {
  int get status => throw _privateConstructorUsedError;
  int get accountBookId => throw _privateConstructorUsedError;
  int get invitationCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UseAloneResponseCopyWith<UseAloneResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UseAloneResponseCopyWith<$Res> {
  factory $UseAloneResponseCopyWith(
          UseAloneResponse value, $Res Function(UseAloneResponse) then) =
      _$UseAloneResponseCopyWithImpl<$Res, UseAloneResponse>;
  @useResult
  $Res call({int status, int accountBookId, int invitationCode});
}

/// @nodoc
class _$UseAloneResponseCopyWithImpl<$Res, $Val extends UseAloneResponse>
    implements $UseAloneResponseCopyWith<$Res> {
  _$UseAloneResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? accountBookId = null,
    Object? invitationCode = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      accountBookId: null == accountBookId
          ? _value.accountBookId
          : accountBookId // ignore: cast_nullable_to_non_nullable
              as int,
      invitationCode: null == invitationCode
          ? _value.invitationCode
          : invitationCode // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UseAloneResponseCopyWith<$Res>
    implements $UseAloneResponseCopyWith<$Res> {
  factory _$$_UseAloneResponseCopyWith(
          _$_UseAloneResponse value, $Res Function(_$_UseAloneResponse) then) =
      __$$_UseAloneResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, int accountBookId, int invitationCode});
}

/// @nodoc
class __$$_UseAloneResponseCopyWithImpl<$Res>
    extends _$UseAloneResponseCopyWithImpl<$Res, _$_UseAloneResponse>
    implements _$$_UseAloneResponseCopyWith<$Res> {
  __$$_UseAloneResponseCopyWithImpl(
      _$_UseAloneResponse _value, $Res Function(_$_UseAloneResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? accountBookId = null,
    Object? invitationCode = null,
  }) {
    return _then(_$_UseAloneResponse(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      accountBookId: null == accountBookId
          ? _value.accountBookId
          : accountBookId // ignore: cast_nullable_to_non_nullable
              as int,
      invitationCode: null == invitationCode
          ? _value.invitationCode
          : invitationCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UseAloneResponse implements _UseAloneResponse {
  const _$_UseAloneResponse(
      {required this.status,
      required this.accountBookId,
      required this.invitationCode});

  factory _$_UseAloneResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UseAloneResponseFromJson(json);

  @override
  final int status;
  @override
  final int accountBookId;
  @override
  final int invitationCode;

  @override
  String toString() {
    return 'UseAloneResponse(status: $status, accountBookId: $accountBookId, invitationCode: $invitationCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UseAloneResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.accountBookId, accountBookId) ||
                other.accountBookId == accountBookId) &&
            (identical(other.invitationCode, invitationCode) ||
                other.invitationCode == invitationCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, status, accountBookId, invitationCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UseAloneResponseCopyWith<_$_UseAloneResponse> get copyWith =>
      __$$_UseAloneResponseCopyWithImpl<_$_UseAloneResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UseAloneResponseToJson(
      this,
    );
  }
}

abstract class _UseAloneResponse implements UseAloneResponse {
  const factory _UseAloneResponse(
      {required final int status,
      required final int accountBookId,
      required final int invitationCode}) = _$_UseAloneResponse;

  factory _UseAloneResponse.fromJson(Map<String, dynamic> json) =
      _$_UseAloneResponse.fromJson;

  @override
  int get status;
  @override
  int get accountBookId;
  @override
  int get invitationCode;
  @override
  @JsonKey(ignore: true)
  _$$_UseAloneResponseCopyWith<_$_UseAloneResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
