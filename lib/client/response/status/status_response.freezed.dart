// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'status_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StatusResponse _$StatusResponseFromJson(Map<String, dynamic> json) {
  return _StatusResponse.fromJson(json);
}

/// @nodoc
mixin _$StatusResponse {
  User get me => throw _privateConstructorUsedError;
  List<AccountBookStatus> get accountBooks =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatusResponseCopyWith<StatusResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusResponseCopyWith<$Res> {
  factory $StatusResponseCopyWith(
          StatusResponse value, $Res Function(StatusResponse) then) =
      _$StatusResponseCopyWithImpl<$Res, StatusResponse>;
  @useResult
  $Res call({User me, List<AccountBookStatus> accountBooks});

  $UserCopyWith<$Res> get me;
}

/// @nodoc
class _$StatusResponseCopyWithImpl<$Res, $Val extends StatusResponse>
    implements $StatusResponseCopyWith<$Res> {
  _$StatusResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? me = null,
    Object? accountBooks = null,
  }) {
    return _then(_value.copyWith(
      me: null == me
          ? _value.me
          : me // ignore: cast_nullable_to_non_nullable
              as User,
      accountBooks: null == accountBooks
          ? _value.accountBooks
          : accountBooks // ignore: cast_nullable_to_non_nullable
              as List<AccountBookStatus>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get me {
    return $UserCopyWith<$Res>(_value.me, (value) {
      return _then(_value.copyWith(me: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StatusResponseCopyWith<$Res>
    implements $StatusResponseCopyWith<$Res> {
  factory _$$_StatusResponseCopyWith(
          _$_StatusResponse value, $Res Function(_$_StatusResponse) then) =
      __$$_StatusResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User me, List<AccountBookStatus> accountBooks});

  @override
  $UserCopyWith<$Res> get me;
}

/// @nodoc
class __$$_StatusResponseCopyWithImpl<$Res>
    extends _$StatusResponseCopyWithImpl<$Res, _$_StatusResponse>
    implements _$$_StatusResponseCopyWith<$Res> {
  __$$_StatusResponseCopyWithImpl(
      _$_StatusResponse _value, $Res Function(_$_StatusResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? me = null,
    Object? accountBooks = null,
  }) {
    return _then(_$_StatusResponse(
      me: null == me
          ? _value.me
          : me // ignore: cast_nullable_to_non_nullable
              as User,
      accountBooks: null == accountBooks
          ? _value._accountBooks
          : accountBooks // ignore: cast_nullable_to_non_nullable
              as List<AccountBookStatus>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StatusResponse
    with DiagnosticableTreeMixin
    implements _StatusResponse {
  const _$_StatusResponse(
      {required this.me, required final List<AccountBookStatus> accountBooks})
      : _accountBooks = accountBooks;

  factory _$_StatusResponse.fromJson(Map<String, dynamic> json) =>
      _$$_StatusResponseFromJson(json);

  @override
  final User me;
  final List<AccountBookStatus> _accountBooks;
  @override
  List<AccountBookStatus> get accountBooks {
    if (_accountBooks is EqualUnmodifiableListView) return _accountBooks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accountBooks);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StatusResponse(me: $me, accountBooks: $accountBooks)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StatusResponse'))
      ..add(DiagnosticsProperty('me', me))
      ..add(DiagnosticsProperty('accountBooks', accountBooks));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StatusResponse &&
            (identical(other.me, me) || other.me == me) &&
            const DeepCollectionEquality()
                .equals(other._accountBooks, _accountBooks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, me, const DeepCollectionEquality().hash(_accountBooks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StatusResponseCopyWith<_$_StatusResponse> get copyWith =>
      __$$_StatusResponseCopyWithImpl<_$_StatusResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatusResponseToJson(
      this,
    );
  }
}

abstract class _StatusResponse implements StatusResponse {
  const factory _StatusResponse(
      {required final User me,
      required final List<AccountBookStatus> accountBooks}) = _$_StatusResponse;

  factory _StatusResponse.fromJson(Map<String, dynamic> json) =
      _$_StatusResponse.fromJson;

  @override
  User get me;
  @override
  List<AccountBookStatus> get accountBooks;
  @override
  @JsonKey(ignore: true)
  _$$_StatusResponseCopyWith<_$_StatusResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
