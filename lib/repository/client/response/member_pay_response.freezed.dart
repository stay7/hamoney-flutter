// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_pay_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MemberPayRepsonse _$MemberPayRepsonseFromJson(Map<String, dynamic> json) {
  return _MemberPayRepsonse.fromJson(json);
}

/// @nodoc
mixin _$MemberPayRepsonse {
  int get id => throw _privateConstructorUsedError;
  int get iconId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemberPayRepsonseCopyWith<MemberPayRepsonse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberPayRepsonseCopyWith<$Res> {
  factory $MemberPayRepsonseCopyWith(
          MemberPayRepsonse value, $Res Function(MemberPayRepsonse) then) =
      _$MemberPayRepsonseCopyWithImpl<$Res, MemberPayRepsonse>;
  @useResult
  $Res call({int id, int iconId, String name});
}

/// @nodoc
class _$MemberPayRepsonseCopyWithImpl<$Res, $Val extends MemberPayRepsonse>
    implements $MemberPayRepsonseCopyWith<$Res> {
  _$MemberPayRepsonseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? iconId = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      iconId: null == iconId
          ? _value.iconId
          : iconId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MemberPayRepsonseCopyWith<$Res>
    implements $MemberPayRepsonseCopyWith<$Res> {
  factory _$$_MemberPayRepsonseCopyWith(_$_MemberPayRepsonse value,
          $Res Function(_$_MemberPayRepsonse) then) =
      __$$_MemberPayRepsonseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int iconId, String name});
}

/// @nodoc
class __$$_MemberPayRepsonseCopyWithImpl<$Res>
    extends _$MemberPayRepsonseCopyWithImpl<$Res, _$_MemberPayRepsonse>
    implements _$$_MemberPayRepsonseCopyWith<$Res> {
  __$$_MemberPayRepsonseCopyWithImpl(
      _$_MemberPayRepsonse _value, $Res Function(_$_MemberPayRepsonse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? iconId = null,
    Object? name = null,
  }) {
    return _then(_$_MemberPayRepsonse(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      iconId: null == iconId
          ? _value.iconId
          : iconId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MemberPayRepsonse
    with DiagnosticableTreeMixin
    implements _MemberPayRepsonse {
  const _$_MemberPayRepsonse(
      {required this.id, required this.iconId, required this.name});

  factory _$_MemberPayRepsonse.fromJson(Map<String, dynamic> json) =>
      _$$_MemberPayRepsonseFromJson(json);

  @override
  final int id;
  @override
  final int iconId;
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MemberPayRepsonse(id: $id, iconId: $iconId, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MemberPayRepsonse'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('iconId', iconId))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MemberPayRepsonse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.iconId, iconId) || other.iconId == iconId) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, iconId, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MemberPayRepsonseCopyWith<_$_MemberPayRepsonse> get copyWith =>
      __$$_MemberPayRepsonseCopyWithImpl<_$_MemberPayRepsonse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MemberPayRepsonseToJson(
      this,
    );
  }
}

abstract class _MemberPayRepsonse implements MemberPayRepsonse {
  const factory _MemberPayRepsonse(
      {required final int id,
      required final int iconId,
      required final String name}) = _$_MemberPayRepsonse;

  factory _MemberPayRepsonse.fromJson(Map<String, dynamic> json) =
      _$_MemberPayRepsonse.fromJson;

  @override
  int get id;
  @override
  int get iconId;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_MemberPayRepsonseCopyWith<_$_MemberPayRepsonse> get copyWith =>
      throw _privateConstructorUsedError;
}
