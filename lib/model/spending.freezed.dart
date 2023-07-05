// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spending.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Spending _$SpendingFromJson(Map<String, dynamic> json) {
  return _Spending.fromJson(json);
}

/// @nodoc
mixin _$Spending {
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get spendAt => throw _privateConstructorUsedError;
  @HiveField(2)
  int get amount => throw _privateConstructorUsedError;
  @HiveField(3)
  int get categoryId => throw _privateConstructorUsedError;
  @HiveField(4)
  int get subCategoryId => throw _privateConstructorUsedError;
  @HiveField(5)
  int get paymentId => throw _privateConstructorUsedError;
  @HiveField(6)
  bool get skipSum => throw _privateConstructorUsedError;
  @HiveField(7)
  String? get memo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpendingCopyWith<Spending> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpendingCopyWith<$Res> {
  factory $SpendingCopyWith(Spending value, $Res Function(Spending) then) =
      _$SpendingCopyWithImpl<$Res, Spending>;
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String spendAt,
      @HiveField(2) int amount,
      @HiveField(3) int categoryId,
      @HiveField(4) int subCategoryId,
      @HiveField(5) int paymentId,
      @HiveField(6) bool skipSum,
      @HiveField(7) String? memo});
}

/// @nodoc
class _$SpendingCopyWithImpl<$Res, $Val extends Spending>
    implements $SpendingCopyWith<$Res> {
  _$SpendingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? spendAt = null,
    Object? amount = null,
    Object? categoryId = null,
    Object? subCategoryId = null,
    Object? paymentId = null,
    Object? skipSum = null,
    Object? memo = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      spendAt: null == spendAt
          ? _value.spendAt
          : spendAt // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      subCategoryId: null == subCategoryId
          ? _value.subCategoryId
          : subCategoryId // ignore: cast_nullable_to_non_nullable
              as int,
      paymentId: null == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as int,
      skipSum: null == skipSum
          ? _value.skipSum
          : skipSum // ignore: cast_nullable_to_non_nullable
              as bool,
      memo: freezed == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SpendingCopyWith<$Res> implements $SpendingCopyWith<$Res> {
  factory _$$_SpendingCopyWith(
          _$_Spending value, $Res Function(_$_Spending) then) =
      __$$_SpendingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String spendAt,
      @HiveField(2) int amount,
      @HiveField(3) int categoryId,
      @HiveField(4) int subCategoryId,
      @HiveField(5) int paymentId,
      @HiveField(6) bool skipSum,
      @HiveField(7) String? memo});
}

/// @nodoc
class __$$_SpendingCopyWithImpl<$Res>
    extends _$SpendingCopyWithImpl<$Res, _$_Spending>
    implements _$$_SpendingCopyWith<$Res> {
  __$$_SpendingCopyWithImpl(
      _$_Spending _value, $Res Function(_$_Spending) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? spendAt = null,
    Object? amount = null,
    Object? categoryId = null,
    Object? subCategoryId = null,
    Object? paymentId = null,
    Object? skipSum = null,
    Object? memo = freezed,
  }) {
    return _then(_$_Spending(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      spendAt: null == spendAt
          ? _value.spendAt
          : spendAt // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      subCategoryId: null == subCategoryId
          ? _value.subCategoryId
          : subCategoryId // ignore: cast_nullable_to_non_nullable
              as int,
      paymentId: null == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as int,
      skipSum: null == skipSum
          ? _value.skipSum
          : skipSum // ignore: cast_nullable_to_non_nullable
              as bool,
      memo: freezed == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Spending with DiagnosticableTreeMixin implements _Spending {
  const _$_Spending(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.spendAt,
      @HiveField(2) required this.amount,
      @HiveField(3) required this.categoryId,
      @HiveField(4) required this.subCategoryId,
      @HiveField(5) required this.paymentId,
      @HiveField(6) required this.skipSum,
      @HiveField(7) this.memo});

  factory _$_Spending.fromJson(Map<String, dynamic> json) =>
      _$$_SpendingFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  final String spendAt;
  @override
  @HiveField(2)
  final int amount;
  @override
  @HiveField(3)
  final int categoryId;
  @override
  @HiveField(4)
  final int subCategoryId;
  @override
  @HiveField(5)
  final int paymentId;
  @override
  @HiveField(6)
  final bool skipSum;
  @override
  @HiveField(7)
  final String? memo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Spending(id: $id, spendAt: $spendAt, amount: $amount, categoryId: $categoryId, subCategoryId: $subCategoryId, paymentId: $paymentId, skipSum: $skipSum, memo: $memo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Spending'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('spendAt', spendAt))
      ..add(DiagnosticsProperty('amount', amount))
      ..add(DiagnosticsProperty('categoryId', categoryId))
      ..add(DiagnosticsProperty('subCategoryId', subCategoryId))
      ..add(DiagnosticsProperty('paymentId', paymentId))
      ..add(DiagnosticsProperty('skipSum', skipSum))
      ..add(DiagnosticsProperty('memo', memo));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Spending &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.spendAt, spendAt) || other.spendAt == spendAt) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.subCategoryId, subCategoryId) ||
                other.subCategoryId == subCategoryId) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.skipSum, skipSum) || other.skipSum == skipSum) &&
            (identical(other.memo, memo) || other.memo == memo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, spendAt, amount, categoryId,
      subCategoryId, paymentId, skipSum, memo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SpendingCopyWith<_$_Spending> get copyWith =>
      __$$_SpendingCopyWithImpl<_$_Spending>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpendingToJson(
      this,
    );
  }
}

abstract class _Spending implements Spending {
  const factory _Spending(
      {@HiveField(0) required final int id,
      @HiveField(1) required final String spendAt,
      @HiveField(2) required final int amount,
      @HiveField(3) required final int categoryId,
      @HiveField(4) required final int subCategoryId,
      @HiveField(5) required final int paymentId,
      @HiveField(6) required final bool skipSum,
      @HiveField(7) final String? memo}) = _$_Spending;

  factory _Spending.fromJson(Map<String, dynamic> json) = _$_Spending.fromJson;

  @override
  @HiveField(0)
  int get id;
  @override
  @HiveField(1)
  String get spendAt;
  @override
  @HiveField(2)
  int get amount;
  @override
  @HiveField(3)
  int get categoryId;
  @override
  @HiveField(4)
  int get subCategoryId;
  @override
  @HiveField(5)
  int get paymentId;
  @override
  @HiveField(6)
  bool get skipSum;
  @override
  @HiveField(7)
  String? get memo;
  @override
  @JsonKey(ignore: true)
  _$$_SpendingCopyWith<_$_Spending> get copyWith =>
      throw _privateConstructorUsedError;
}
