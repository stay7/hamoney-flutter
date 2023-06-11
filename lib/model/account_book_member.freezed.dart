// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_book_member.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccountBookMember _$AccountBookMemberFromJson(Map<String, dynamic> json) {
  return _AccountBookMember.fromJson(json);
}

/// @nodoc
mixin _$AccountBookMember {
  AccountBook get accountBook => throw _privateConstructorUsedError;
  List<Member> get members => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountBookMemberCopyWith<AccountBookMember> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountBookMemberCopyWith<$Res> {
  factory $AccountBookMemberCopyWith(
          AccountBookMember value, $Res Function(AccountBookMember) then) =
      _$AccountBookMemberCopyWithImpl<$Res, AccountBookMember>;
  @useResult
  $Res call({AccountBook accountBook, List<Member> members});

  $AccountBookCopyWith<$Res> get accountBook;
}

/// @nodoc
class _$AccountBookMemberCopyWithImpl<$Res, $Val extends AccountBookMember>
    implements $AccountBookMemberCopyWith<$Res> {
  _$AccountBookMemberCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountBook = null,
    Object? members = null,
  }) {
    return _then(_value.copyWith(
      accountBook: null == accountBook
          ? _value.accountBook
          : accountBook // ignore: cast_nullable_to_non_nullable
              as AccountBook,
      members: null == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<Member>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountBookCopyWith<$Res> get accountBook {
    return $AccountBookCopyWith<$Res>(_value.accountBook, (value) {
      return _then(_value.copyWith(accountBook: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AccountBookMemberCopyWith<$Res>
    implements $AccountBookMemberCopyWith<$Res> {
  factory _$$_AccountBookMemberCopyWith(_$_AccountBookMember value,
          $Res Function(_$_AccountBookMember) then) =
      __$$_AccountBookMemberCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AccountBook accountBook, List<Member> members});

  @override
  $AccountBookCopyWith<$Res> get accountBook;
}

/// @nodoc
class __$$_AccountBookMemberCopyWithImpl<$Res>
    extends _$AccountBookMemberCopyWithImpl<$Res, _$_AccountBookMember>
    implements _$$_AccountBookMemberCopyWith<$Res> {
  __$$_AccountBookMemberCopyWithImpl(
      _$_AccountBookMember _value, $Res Function(_$_AccountBookMember) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountBook = null,
    Object? members = null,
  }) {
    return _then(_$_AccountBookMember(
      accountBook: null == accountBook
          ? _value.accountBook
          : accountBook // ignore: cast_nullable_to_non_nullable
              as AccountBook,
      members: null == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<Member>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AccountBookMember
    with DiagnosticableTreeMixin
    implements _AccountBookMember {
  const _$_AccountBookMember(
      {required this.accountBook, required final List<Member> members})
      : _members = members;

  factory _$_AccountBookMember.fromJson(Map<String, dynamic> json) =>
      _$$_AccountBookMemberFromJson(json);

  @override
  final AccountBook accountBook;
  final List<Member> _members;
  @override
  List<Member> get members {
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountBookMember(accountBook: $accountBook, members: $members)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AccountBookMember'))
      ..add(DiagnosticsProperty('accountBook', accountBook))
      ..add(DiagnosticsProperty('members', members));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountBookMember &&
            (identical(other.accountBook, accountBook) ||
                other.accountBook == accountBook) &&
            const DeepCollectionEquality().equals(other._members, _members));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, accountBook, const DeepCollectionEquality().hash(_members));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountBookMemberCopyWith<_$_AccountBookMember> get copyWith =>
      __$$_AccountBookMemberCopyWithImpl<_$_AccountBookMember>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountBookMemberToJson(
      this,
    );
  }
}

abstract class _AccountBookMember implements AccountBookMember {
  const factory _AccountBookMember(
      {required final AccountBook accountBook,
      required final List<Member> members}) = _$_AccountBookMember;

  factory _AccountBookMember.fromJson(Map<String, dynamic> json) =
      _$_AccountBookMember.fromJson;

  @override
  AccountBook get accountBook;
  @override
  List<Member> get members;
  @override
  @JsonKey(ignore: true)
  _$$_AccountBookMemberCopyWith<_$_AccountBookMember> get copyWith =>
      throw _privateConstructorUsedError;
}
