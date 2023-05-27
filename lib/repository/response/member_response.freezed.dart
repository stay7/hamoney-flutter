// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MemberResponse _$MemberResponseFromJson(Map<String, dynamic> json) {
  return _MemberResponse.fromJson(json);
}

/// @nodoc
mixin _$MemberResponse {
  String get userId => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  List<MemberPay> get payments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemberResponseCopyWith<MemberResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberResponseCopyWith<$Res> {
  factory $MemberResponseCopyWith(
          MemberResponse value, $Res Function(MemberResponse) then) =
      _$MemberResponseCopyWithImpl<$Res, MemberResponse>;
  @useResult
  $Res call({String userId, String nickname, List<MemberPay> payments});
}

/// @nodoc
class _$MemberResponseCopyWithImpl<$Res, $Val extends MemberResponse>
    implements $MemberResponseCopyWith<$Res> {
  _$MemberResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? nickname = null,
    Object? payments = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      payments: null == payments
          ? _value.payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<MemberPay>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MemberResponseCopyWith<$Res>
    implements $MemberResponseCopyWith<$Res> {
  factory _$$_MemberResponseCopyWith(
          _$_MemberResponse value, $Res Function(_$_MemberResponse) then) =
      __$$_MemberResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String nickname, List<MemberPay> payments});
}

/// @nodoc
class __$$_MemberResponseCopyWithImpl<$Res>
    extends _$MemberResponseCopyWithImpl<$Res, _$_MemberResponse>
    implements _$$_MemberResponseCopyWith<$Res> {
  __$$_MemberResponseCopyWithImpl(
      _$_MemberResponse _value, $Res Function(_$_MemberResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? nickname = null,
    Object? payments = null,
  }) {
    return _then(_$_MemberResponse(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      payments: null == payments
          ? _value._payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<MemberPay>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MemberResponse
    with DiagnosticableTreeMixin
    implements _MemberResponse {
  const _$_MemberResponse(
      {required this.userId,
      required this.nickname,
      required final List<MemberPay> payments})
      : _payments = payments;

  factory _$_MemberResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MemberResponseFromJson(json);

  @override
  final String userId;
  @override
  final String nickname;
  final List<MemberPay> _payments;
  @override
  List<MemberPay> get payments {
    if (_payments is EqualUnmodifiableListView) return _payments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payments);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MemberResponse(userId: $userId, nickname: $nickname, payments: $payments)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MemberResponse'))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('nickname', nickname))
      ..add(DiagnosticsProperty('payments', payments));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MemberResponse &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            const DeepCollectionEquality().equals(other._payments, _payments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, nickname,
      const DeepCollectionEquality().hash(_payments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MemberResponseCopyWith<_$_MemberResponse> get copyWith =>
      __$$_MemberResponseCopyWithImpl<_$_MemberResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MemberResponseToJson(
      this,
    );
  }
}

abstract class _MemberResponse implements MemberResponse {
  const factory _MemberResponse(
      {required final String userId,
      required final String nickname,
      required final List<MemberPay> payments}) = _$_MemberResponse;

  factory _MemberResponse.fromJson(Map<String, dynamic> json) =
      _$_MemberResponse.fromJson;

  @override
  String get userId;
  @override
  String get nickname;
  @override
  List<MemberPay> get payments;
  @override
  @JsonKey(ignore: true)
  _$$_MemberResponseCopyWith<_$_MemberResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
