// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'use_together_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UseTogetherRequest _$UseTogetherRequestFromJson(Map<String, dynamic> json) {
  return _UseTogetherRequest.fromJson(json);
}

/// @nodoc
mixin _$UseTogetherRequest {
  int get invitationCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UseTogetherRequestCopyWith<UseTogetherRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UseTogetherRequestCopyWith<$Res> {
  factory $UseTogetherRequestCopyWith(
          UseTogetherRequest value, $Res Function(UseTogetherRequest) then) =
      _$UseTogetherRequestCopyWithImpl<$Res, UseTogetherRequest>;
  @useResult
  $Res call({int invitationCode});
}

/// @nodoc
class _$UseTogetherRequestCopyWithImpl<$Res, $Val extends UseTogetherRequest>
    implements $UseTogetherRequestCopyWith<$Res> {
  _$UseTogetherRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invitationCode = null,
  }) {
    return _then(_value.copyWith(
      invitationCode: null == invitationCode
          ? _value.invitationCode
          : invitationCode // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UseTogetherRequestCopyWith<$Res>
    implements $UseTogetherRequestCopyWith<$Res> {
  factory _$$_UseTogetherRequestCopyWith(_$_UseTogetherRequest value,
          $Res Function(_$_UseTogetherRequest) then) =
      __$$_UseTogetherRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int invitationCode});
}

/// @nodoc
class __$$_UseTogetherRequestCopyWithImpl<$Res>
    extends _$UseTogetherRequestCopyWithImpl<$Res, _$_UseTogetherRequest>
    implements _$$_UseTogetherRequestCopyWith<$Res> {
  __$$_UseTogetherRequestCopyWithImpl(
      _$_UseTogetherRequest _value, $Res Function(_$_UseTogetherRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invitationCode = null,
  }) {
    return _then(_$_UseTogetherRequest(
      invitationCode: null == invitationCode
          ? _value.invitationCode
          : invitationCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UseTogetherRequest
    with DiagnosticableTreeMixin
    implements _UseTogetherRequest {
  const _$_UseTogetherRequest({required this.invitationCode});

  factory _$_UseTogetherRequest.fromJson(Map<String, dynamic> json) =>
      _$$_UseTogetherRequestFromJson(json);

  @override
  final int invitationCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UseTogetherRequest(invitationCode: $invitationCode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UseTogetherRequest'))
      ..add(DiagnosticsProperty('invitationCode', invitationCode));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UseTogetherRequest &&
            (identical(other.invitationCode, invitationCode) ||
                other.invitationCode == invitationCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, invitationCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UseTogetherRequestCopyWith<_$_UseTogetherRequest> get copyWith =>
      __$$_UseTogetherRequestCopyWithImpl<_$_UseTogetherRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UseTogetherRequestToJson(
      this,
    );
  }
}

abstract class _UseTogetherRequest implements UseTogetherRequest {
  const factory _UseTogetherRequest({required final int invitationCode}) =
      _$_UseTogetherRequest;

  factory _UseTogetherRequest.fromJson(Map<String, dynamic> json) =
      _$_UseTogetherRequest.fromJson;

  @override
  int get invitationCode;
  @override
  @JsonKey(ignore: true)
  _$$_UseTogetherRequestCopyWith<_$_UseTogetherRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
