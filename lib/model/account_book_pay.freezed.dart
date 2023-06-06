// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_book_pay.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccountBookPay _$AccountBookPayFromJson(Map<String, dynamic> json) {
  return _AccountBookPay.fromJson(json);
}

/// @nodoc
mixin _$AccountBookPay {
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @HiveField(2)
  int get iconId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountBookPayCopyWith<AccountBookPay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountBookPayCopyWith<$Res> {
  factory $AccountBookPayCopyWith(
          AccountBookPay value, $Res Function(AccountBookPay) then) =
      _$AccountBookPayCopyWithImpl<$Res, AccountBookPay>;
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String name,
      @HiveField(2) int iconId});
}

/// @nodoc
class _$AccountBookPayCopyWithImpl<$Res, $Val extends AccountBookPay>
    implements $AccountBookPayCopyWith<$Res> {
  _$AccountBookPayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? iconId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iconId: null == iconId
          ? _value.iconId
          : iconId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AccountBookPayCopyWith<$Res>
    implements $AccountBookPayCopyWith<$Res> {
  factory _$$_AccountBookPayCopyWith(
          _$_AccountBookPay value, $Res Function(_$_AccountBookPay) then) =
      __$$_AccountBookPayCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String name,
      @HiveField(2) int iconId});
}

/// @nodoc
class __$$_AccountBookPayCopyWithImpl<$Res>
    extends _$AccountBookPayCopyWithImpl<$Res, _$_AccountBookPay>
    implements _$$_AccountBookPayCopyWith<$Res> {
  __$$_AccountBookPayCopyWithImpl(
      _$_AccountBookPay _value, $Res Function(_$_AccountBookPay) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? iconId = null,
  }) {
    return _then(_$_AccountBookPay(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iconId: null == iconId
          ? _value.iconId
          : iconId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: HiveTypeId.accountBookPay)
class _$_AccountBookPay
    with DiagnosticableTreeMixin
    implements _AccountBookPay {
  const _$_AccountBookPay(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.name,
      @HiveField(2) required this.iconId});

  factory _$_AccountBookPay.fromJson(Map<String, dynamic> json) =>
      _$$_AccountBookPayFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  final String name;
  @override
  @HiveField(2)
  final int iconId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountBookPay(id: $id, name: $name, iconId: $iconId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AccountBookPay'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('iconId', iconId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountBookPay &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.iconId, iconId) || other.iconId == iconId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, iconId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountBookPayCopyWith<_$_AccountBookPay> get copyWith =>
      __$$_AccountBookPayCopyWithImpl<_$_AccountBookPay>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountBookPayToJson(
      this,
    );
  }
}

abstract class _AccountBookPay implements AccountBookPay {
  const factory _AccountBookPay(
      {@HiveField(0) required final int id,
      @HiveField(1) required final String name,
      @HiveField(2) required final int iconId}) = _$_AccountBookPay;

  factory _AccountBookPay.fromJson(Map<String, dynamic> json) =
      _$_AccountBookPay.fromJson;

  @override
  @HiveField(0)
  int get id;
  @override
  @HiveField(1)
  String get name;
  @override
  @HiveField(2)
  int get iconId;
  @override
  @JsonKey(ignore: true)
  _$$_AccountBookPayCopyWith<_$_AccountBookPay> get copyWith =>
      throw _privateConstructorUsedError;
}
