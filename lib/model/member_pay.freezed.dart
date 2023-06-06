// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_pay.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MemberPay _$MemberPayFromJson(Map<String, dynamic> json) {
  return _MemberPay.fromJson(json);
}

/// @nodoc
mixin _$MemberPay {
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @HiveField(2)
  int get iconId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemberPayCopyWith<MemberPay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberPayCopyWith<$Res> {
  factory $MemberPayCopyWith(MemberPay value, $Res Function(MemberPay) then) =
      _$MemberPayCopyWithImpl<$Res, MemberPay>;
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String name,
      @HiveField(2) int iconId});
}

/// @nodoc
class _$MemberPayCopyWithImpl<$Res, $Val extends MemberPay>
    implements $MemberPayCopyWith<$Res> {
  _$MemberPayCopyWithImpl(this._value, this._then);

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
abstract class _$$_MemberPayCopyWith<$Res> implements $MemberPayCopyWith<$Res> {
  factory _$$_MemberPayCopyWith(
          _$_MemberPay value, $Res Function(_$_MemberPay) then) =
      __$$_MemberPayCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String name,
      @HiveField(2) int iconId});
}

/// @nodoc
class __$$_MemberPayCopyWithImpl<$Res>
    extends _$MemberPayCopyWithImpl<$Res, _$_MemberPay>
    implements _$$_MemberPayCopyWith<$Res> {
  __$$_MemberPayCopyWithImpl(
      _$_MemberPay _value, $Res Function(_$_MemberPay) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? iconId = null,
  }) {
    return _then(_$_MemberPay(
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
class _$_MemberPay with DiagnosticableTreeMixin implements _MemberPay {
  const _$_MemberPay(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.name,
      @HiveField(2) required this.iconId});

  factory _$_MemberPay.fromJson(Map<String, dynamic> json) =>
      _$$_MemberPayFromJson(json);

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
    return 'MemberPay(id: $id, name: $name, iconId: $iconId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MemberPay'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('iconId', iconId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MemberPay &&
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
  _$$_MemberPayCopyWith<_$_MemberPay> get copyWith =>
      __$$_MemberPayCopyWithImpl<_$_MemberPay>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MemberPayToJson(
      this,
    );
  }
}

abstract class _MemberPay implements MemberPay {
  const factory _MemberPay(
      {@HiveField(0) required final int id,
      @HiveField(1) required final String name,
      @HiveField(2) required final int iconId}) = _$_MemberPay;

  factory _MemberPay.fromJson(Map<String, dynamic> json) =
      _$_MemberPay.fromJson;

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
  _$$_MemberPayCopyWith<_$_MemberPay> get copyWith =>
      throw _privateConstructorUsedError;
}
