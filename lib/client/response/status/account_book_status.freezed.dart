// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_book_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccountBookStatus _$AccountBookStatusFromJson(Map<String, dynamic> json) {
  return _AccountBookStatus.fromJson(json);
}

/// @nodoc
mixin _$AccountBookStatus {
  int get accountBookId => throw _privateConstructorUsedError;
  List<int> get members => throw _privateConstructorUsedError;
  int get revision => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountBookStatusCopyWith<AccountBookStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountBookStatusCopyWith<$Res> {
  factory $AccountBookStatusCopyWith(
          AccountBookStatus value, $Res Function(AccountBookStatus) then) =
      _$AccountBookStatusCopyWithImpl<$Res, AccountBookStatus>;
  @useResult
  $Res call({int accountBookId, List<int> members, int revision});
}

/// @nodoc
class _$AccountBookStatusCopyWithImpl<$Res, $Val extends AccountBookStatus>
    implements $AccountBookStatusCopyWith<$Res> {
  _$AccountBookStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountBookId = null,
    Object? members = null,
    Object? revision = null,
  }) {
    return _then(_value.copyWith(
      accountBookId: null == accountBookId
          ? _value.accountBookId
          : accountBookId // ignore: cast_nullable_to_non_nullable
              as int,
      members: null == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<int>,
      revision: null == revision
          ? _value.revision
          : revision // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AccountBookStatusCopyWith<$Res>
    implements $AccountBookStatusCopyWith<$Res> {
  factory _$$_AccountBookStatusCopyWith(_$_AccountBookStatus value,
          $Res Function(_$_AccountBookStatus) then) =
      __$$_AccountBookStatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int accountBookId, List<int> members, int revision});
}

/// @nodoc
class __$$_AccountBookStatusCopyWithImpl<$Res>
    extends _$AccountBookStatusCopyWithImpl<$Res, _$_AccountBookStatus>
    implements _$$_AccountBookStatusCopyWith<$Res> {
  __$$_AccountBookStatusCopyWithImpl(
      _$_AccountBookStatus _value, $Res Function(_$_AccountBookStatus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountBookId = null,
    Object? members = null,
    Object? revision = null,
  }) {
    return _then(_$_AccountBookStatus(
      accountBookId: null == accountBookId
          ? _value.accountBookId
          : accountBookId // ignore: cast_nullable_to_non_nullable
              as int,
      members: null == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<int>,
      revision: null == revision
          ? _value.revision
          : revision // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AccountBookStatus
    with DiagnosticableTreeMixin
    implements _AccountBookStatus {
  const _$_AccountBookStatus(
      {required this.accountBookId,
      required final List<int> members,
      required this.revision})
      : _members = members;

  factory _$_AccountBookStatus.fromJson(Map<String, dynamic> json) =>
      _$$_AccountBookStatusFromJson(json);

  @override
  final int accountBookId;
  final List<int> _members;
  @override
  List<int> get members {
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  @override
  final int revision;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountBookStatus(accountBookId: $accountBookId, members: $members, revision: $revision)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AccountBookStatus'))
      ..add(DiagnosticsProperty('accountBookId', accountBookId))
      ..add(DiagnosticsProperty('members', members))
      ..add(DiagnosticsProperty('revision', revision));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountBookStatus &&
            (identical(other.accountBookId, accountBookId) ||
                other.accountBookId == accountBookId) &&
            const DeepCollectionEquality().equals(other._members, _members) &&
            (identical(other.revision, revision) ||
                other.revision == revision));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accountBookId,
      const DeepCollectionEquality().hash(_members), revision);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountBookStatusCopyWith<_$_AccountBookStatus> get copyWith =>
      __$$_AccountBookStatusCopyWithImpl<_$_AccountBookStatus>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountBookStatusToJson(
      this,
    );
  }
}

abstract class _AccountBookStatus implements AccountBookStatus {
  const factory _AccountBookStatus(
      {required final int accountBookId,
      required final List<int> members,
      required final int revision}) = _$_AccountBookStatus;

  factory _AccountBookStatus.fromJson(Map<String, dynamic> json) =
      _$_AccountBookStatus.fromJson;

  @override
  int get accountBookId;
  @override
  List<int> get members;
  @override
  int get revision;
  @override
  @JsonKey(ignore: true)
  _$$_AccountBookStatusCopyWith<_$_AccountBookStatus> get copyWith =>
      throw _privateConstructorUsedError;
}
