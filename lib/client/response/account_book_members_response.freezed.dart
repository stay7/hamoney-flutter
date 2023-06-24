// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_book_members_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccountBookMembersResponse _$AccountBookMembersResponseFromJson(
    Map<String, dynamic> json) {
  return _AccountBookMembersResponse.fromJson(json);
}

/// @nodoc
mixin _$AccountBookMembersResponse {
  int get status => throw _privateConstructorUsedError;
  int get accountBookId => throw _privateConstructorUsedError;
  List<MemberResponse> get members => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountBookMembersResponseCopyWith<AccountBookMembersResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountBookMembersResponseCopyWith<$Res> {
  factory $AccountBookMembersResponseCopyWith(AccountBookMembersResponse value,
          $Res Function(AccountBookMembersResponse) then) =
      _$AccountBookMembersResponseCopyWithImpl<$Res,
          AccountBookMembersResponse>;
  @useResult
  $Res call({int status, int accountBookId, List<MemberResponse> members});
}

/// @nodoc
class _$AccountBookMembersResponseCopyWithImpl<$Res,
        $Val extends AccountBookMembersResponse>
    implements $AccountBookMembersResponseCopyWith<$Res> {
  _$AccountBookMembersResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? accountBookId = null,
    Object? members = null,
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
      members: null == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<MemberResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AccountBookMembersResponseCopyWith<$Res>
    implements $AccountBookMembersResponseCopyWith<$Res> {
  factory _$$_AccountBookMembersResponseCopyWith(
          _$_AccountBookMembersResponse value,
          $Res Function(_$_AccountBookMembersResponse) then) =
      __$$_AccountBookMembersResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, int accountBookId, List<MemberResponse> members});
}

/// @nodoc
class __$$_AccountBookMembersResponseCopyWithImpl<$Res>
    extends _$AccountBookMembersResponseCopyWithImpl<$Res,
        _$_AccountBookMembersResponse>
    implements _$$_AccountBookMembersResponseCopyWith<$Res> {
  __$$_AccountBookMembersResponseCopyWithImpl(
      _$_AccountBookMembersResponse _value,
      $Res Function(_$_AccountBookMembersResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? accountBookId = null,
    Object? members = null,
  }) {
    return _then(_$_AccountBookMembersResponse(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      accountBookId: null == accountBookId
          ? _value.accountBookId
          : accountBookId // ignore: cast_nullable_to_non_nullable
              as int,
      members: null == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<MemberResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AccountBookMembersResponse implements _AccountBookMembersResponse {
  const _$_AccountBookMembersResponse(
      {required this.status,
      required this.accountBookId,
      required final List<MemberResponse> members})
      : _members = members;

  factory _$_AccountBookMembersResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AccountBookMembersResponseFromJson(json);

  @override
  final int status;
  @override
  final int accountBookId;
  final List<MemberResponse> _members;
  @override
  List<MemberResponse> get members {
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  @override
  String toString() {
    return 'AccountBookMembersResponse(status: $status, accountBookId: $accountBookId, members: $members)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountBookMembersResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.accountBookId, accountBookId) ||
                other.accountBookId == accountBookId) &&
            const DeepCollectionEquality().equals(other._members, _members));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, accountBookId,
      const DeepCollectionEquality().hash(_members));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountBookMembersResponseCopyWith<_$_AccountBookMembersResponse>
      get copyWith => __$$_AccountBookMembersResponseCopyWithImpl<
          _$_AccountBookMembersResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountBookMembersResponseToJson(
      this,
    );
  }
}

abstract class _AccountBookMembersResponse
    implements AccountBookMembersResponse {
  const factory _AccountBookMembersResponse(
          {required final int status,
          required final int accountBookId,
          required final List<MemberResponse> members}) =
      _$_AccountBookMembersResponse;

  factory _AccountBookMembersResponse.fromJson(Map<String, dynamic> json) =
      _$_AccountBookMembersResponse.fromJson;

  @override
  int get status;
  @override
  int get accountBookId;
  @override
  List<MemberResponse> get members;
  @override
  @JsonKey(ignore: true)
  _$$_AccountBookMembersResponseCopyWith<_$_AccountBookMembersResponse>
      get copyWith => throw _privateConstructorUsedError;
}
