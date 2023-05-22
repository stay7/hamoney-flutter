// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_book_id_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccountBookIdResponse _$AccountBookIdResponseFromJson(
    Map<String, dynamic> json) {
  return _AccountBookIdResponse.fromJson(json);
}

/// @nodoc
mixin _$AccountBookIdResponse {
  int get status => throw _privateConstructorUsedError;
  int get accountBookId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountBookIdResponseCopyWith<AccountBookIdResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountBookIdResponseCopyWith<$Res> {
  factory $AccountBookIdResponseCopyWith(AccountBookIdResponse value,
          $Res Function(AccountBookIdResponse) then) =
      _$AccountBookIdResponseCopyWithImpl<$Res, AccountBookIdResponse>;
  @useResult
  $Res call({int status, int accountBookId});
}

/// @nodoc
class _$AccountBookIdResponseCopyWithImpl<$Res,
        $Val extends AccountBookIdResponse>
    implements $AccountBookIdResponseCopyWith<$Res> {
  _$AccountBookIdResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? accountBookId = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AccountBookIdResponseCopyWith<$Res>
    implements $AccountBookIdResponseCopyWith<$Res> {
  factory _$$_AccountBookIdResponseCopyWith(_$_AccountBookIdResponse value,
          $Res Function(_$_AccountBookIdResponse) then) =
      __$$_AccountBookIdResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, int accountBookId});
}

/// @nodoc
class __$$_AccountBookIdResponseCopyWithImpl<$Res>
    extends _$AccountBookIdResponseCopyWithImpl<$Res, _$_AccountBookIdResponse>
    implements _$$_AccountBookIdResponseCopyWith<$Res> {
  __$$_AccountBookIdResponseCopyWithImpl(_$_AccountBookIdResponse _value,
      $Res Function(_$_AccountBookIdResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? accountBookId = null,
  }) {
    return _then(_$_AccountBookIdResponse(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      accountBookId: null == accountBookId
          ? _value.accountBookId
          : accountBookId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AccountBookIdResponse
    with DiagnosticableTreeMixin
    implements _AccountBookIdResponse {
  const _$_AccountBookIdResponse(
      {required this.status, required this.accountBookId});

  factory _$_AccountBookIdResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AccountBookIdResponseFromJson(json);

  @override
  final int status;
  @override
  final int accountBookId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountBookIdResponse(status: $status, accountBookId: $accountBookId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AccountBookIdResponse'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('accountBookId', accountBookId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountBookIdResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.accountBookId, accountBookId) ||
                other.accountBookId == accountBookId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, accountBookId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountBookIdResponseCopyWith<_$_AccountBookIdResponse> get copyWith =>
      __$$_AccountBookIdResponseCopyWithImpl<_$_AccountBookIdResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountBookIdResponseToJson(
      this,
    );
  }
}

abstract class _AccountBookIdResponse implements AccountBookIdResponse {
  const factory _AccountBookIdResponse(
      {required final int status,
      required final int accountBookId}) = _$_AccountBookIdResponse;

  factory _AccountBookIdResponse.fromJson(Map<String, dynamic> json) =
      _$_AccountBookIdResponse.fromJson;

  @override
  int get status;
  @override
  int get accountBookId;
  @override
  @JsonKey(ignore: true)
  _$$_AccountBookIdResponseCopyWith<_$_AccountBookIdResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
