// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_book.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccountBook _$AccountBookFromJson(Map<String, dynamic> json) {
  return _AccountBook.fromJson(json);
}

/// @nodoc
mixin _$AccountBook {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<Category> get categories => throw _privateConstructorUsedError;
  List<AccountBook> get payments => throw _privateConstructorUsedError;
  int get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountBookCopyWith<AccountBook> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountBookCopyWith<$Res> {
  factory $AccountBookCopyWith(
          AccountBook value, $Res Function(AccountBook) then) =
      _$AccountBookCopyWithImpl<$Res, AccountBook>;
  @useResult
  $Res call(
      {int id,
      String name,
      List<Category> categories,
      List<AccountBook> payments,
      int createdAt});
}

/// @nodoc
class _$AccountBookCopyWithImpl<$Res, $Val extends AccountBook>
    implements $AccountBookCopyWith<$Res> {
  _$AccountBookCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? categories = null,
    Object? payments = null,
    Object? createdAt = null,
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
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      payments: null == payments
          ? _value.payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<AccountBook>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AccountBookCopyWith<$Res>
    implements $AccountBookCopyWith<$Res> {
  factory _$$_AccountBookCopyWith(
          _$_AccountBook value, $Res Function(_$_AccountBook) then) =
      __$$_AccountBookCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      List<Category> categories,
      List<AccountBook> payments,
      int createdAt});
}

/// @nodoc
class __$$_AccountBookCopyWithImpl<$Res>
    extends _$AccountBookCopyWithImpl<$Res, _$_AccountBook>
    implements _$$_AccountBookCopyWith<$Res> {
  __$$_AccountBookCopyWithImpl(
      _$_AccountBook _value, $Res Function(_$_AccountBook) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? categories = null,
    Object? payments = null,
    Object? createdAt = null,
  }) {
    return _then(_$_AccountBook(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      payments: null == payments
          ? _value._payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<AccountBook>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AccountBook implements _AccountBook {
  const _$_AccountBook(
      {required this.id,
      required this.name,
      required final List<Category> categories,
      required final List<AccountBook> payments,
      required this.createdAt})
      : _categories = categories,
        _payments = payments;

  factory _$_AccountBook.fromJson(Map<String, dynamic> json) =>
      _$$_AccountBookFromJson(json);

  @override
  final int id;
  @override
  final String name;
  final List<Category> _categories;
  @override
  List<Category> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<AccountBook> _payments;
  @override
  List<AccountBook> get payments {
    if (_payments is EqualUnmodifiableListView) return _payments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payments);
  }

  @override
  final int createdAt;

  @override
  String toString() {
    return 'AccountBook(id: $id, name: $name, categories: $categories, payments: $payments, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountBook &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality().equals(other._payments, _payments) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_payments),
      createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountBookCopyWith<_$_AccountBook> get copyWith =>
      __$$_AccountBookCopyWithImpl<_$_AccountBook>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountBookToJson(
      this,
    );
  }
}

abstract class _AccountBook implements AccountBook {
  const factory _AccountBook(
      {required final int id,
      required final String name,
      required final List<Category> categories,
      required final List<AccountBook> payments,
      required final int createdAt}) = _$_AccountBook;

  factory _AccountBook.fromJson(Map<String, dynamic> json) =
      _$_AccountBook.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  List<Category> get categories;
  @override
  List<AccountBook> get payments;
  @override
  int get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_AccountBookCopyWith<_$_AccountBook> get copyWith =>
      throw _privateConstructorUsedError;
}
