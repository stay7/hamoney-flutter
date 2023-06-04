// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'use_together_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UseTogetherResponse _$UseTogetherResponseFromJson(Map<String, dynamic> json) {
  return _UseTogetherResponse.fromJson(json);
}

/// @nodoc
mixin _$UseTogetherResponse {
  int get accountBookId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UseTogetherResponseCopyWith<UseTogetherResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UseTogetherResponseCopyWith<$Res> {
  factory $UseTogetherResponseCopyWith(
          UseTogetherResponse value, $Res Function(UseTogetherResponse) then) =
      _$UseTogetherResponseCopyWithImpl<$Res, UseTogetherResponse>;
  @useResult
  $Res call({int accountBookId});
}

/// @nodoc
class _$UseTogetherResponseCopyWithImpl<$Res, $Val extends UseTogetherResponse>
    implements $UseTogetherResponseCopyWith<$Res> {
  _$UseTogetherResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountBookId = null,
  }) {
    return _then(_value.copyWith(
      accountBookId: null == accountBookId
          ? _value.accountBookId
          : accountBookId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UseTogetherResponseCopyWith<$Res>
    implements $UseTogetherResponseCopyWith<$Res> {
  factory _$$_UseTogetherResponseCopyWith(_$_UseTogetherResponse value,
          $Res Function(_$_UseTogetherResponse) then) =
      __$$_UseTogetherResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int accountBookId});
}

/// @nodoc
class __$$_UseTogetherResponseCopyWithImpl<$Res>
    extends _$UseTogetherResponseCopyWithImpl<$Res, _$_UseTogetherResponse>
    implements _$$_UseTogetherResponseCopyWith<$Res> {
  __$$_UseTogetherResponseCopyWithImpl(_$_UseTogetherResponse _value,
      $Res Function(_$_UseTogetherResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountBookId = null,
  }) {
    return _then(_$_UseTogetherResponse(
      accountBookId: null == accountBookId
          ? _value.accountBookId
          : accountBookId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UseTogetherResponse
    with DiagnosticableTreeMixin
    implements _UseTogetherResponse {
  const _$_UseTogetherResponse({required this.accountBookId});

  factory _$_UseTogetherResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UseTogetherResponseFromJson(json);

  @override
  final int accountBookId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UseTogetherResponse(accountBookId: $accountBookId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UseTogetherResponse'))
      ..add(DiagnosticsProperty('accountBookId', accountBookId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UseTogetherResponse &&
            (identical(other.accountBookId, accountBookId) ||
                other.accountBookId == accountBookId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accountBookId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UseTogetherResponseCopyWith<_$_UseTogetherResponse> get copyWith =>
      __$$_UseTogetherResponseCopyWithImpl<_$_UseTogetherResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UseTogetherResponseToJson(
      this,
    );
  }
}

abstract class _UseTogetherResponse implements UseTogetherResponse {
  const factory _UseTogetherResponse({required final int accountBookId}) =
      _$_UseTogetherResponse;

  factory _UseTogetherResponse.fromJson(Map<String, dynamic> json) =
      _$_UseTogetherResponse.fromJson;

  @override
  int get accountBookId;
  @override
  @JsonKey(ignore: true)
  _$$_UseTogetherResponseCopyWith<_$_UseTogetherResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
