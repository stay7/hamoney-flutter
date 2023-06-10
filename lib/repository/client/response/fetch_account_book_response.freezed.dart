// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_account_book_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FetchAccountBookResponse _$FetchAccountBookResponseFromJson(
    Map<String, dynamic> json) {
  return _FetchAccountBookResponse.fromJson(json);
}

/// @nodoc
mixin _$FetchAccountBookResponse {
  AccountBook get accountBook => throw _privateConstructorUsedError;
  int get revision => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchAccountBookResponseCopyWith<FetchAccountBookResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchAccountBookResponseCopyWith<$Res> {
  factory $FetchAccountBookResponseCopyWith(FetchAccountBookResponse value,
          $Res Function(FetchAccountBookResponse) then) =
      _$FetchAccountBookResponseCopyWithImpl<$Res, FetchAccountBookResponse>;
  @useResult
  $Res call({AccountBook accountBook, int revision});

  $AccountBookCopyWith<$Res> get accountBook;
}

/// @nodoc
class _$FetchAccountBookResponseCopyWithImpl<$Res,
        $Val extends FetchAccountBookResponse>
    implements $FetchAccountBookResponseCopyWith<$Res> {
  _$FetchAccountBookResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountBook = null,
    Object? revision = null,
  }) {
    return _then(_value.copyWith(
      accountBook: null == accountBook
          ? _value.accountBook
          : accountBook // ignore: cast_nullable_to_non_nullable
              as AccountBook,
      revision: null == revision
          ? _value.revision
          : revision // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$_FetchAccountBookResponseCopyWith<$Res>
    implements $FetchAccountBookResponseCopyWith<$Res> {
  factory _$$_FetchAccountBookResponseCopyWith(
          _$_FetchAccountBookResponse value,
          $Res Function(_$_FetchAccountBookResponse) then) =
      __$$_FetchAccountBookResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AccountBook accountBook, int revision});

  @override
  $AccountBookCopyWith<$Res> get accountBook;
}

/// @nodoc
class __$$_FetchAccountBookResponseCopyWithImpl<$Res>
    extends _$FetchAccountBookResponseCopyWithImpl<$Res,
        _$_FetchAccountBookResponse>
    implements _$$_FetchAccountBookResponseCopyWith<$Res> {
  __$$_FetchAccountBookResponseCopyWithImpl(_$_FetchAccountBookResponse _value,
      $Res Function(_$_FetchAccountBookResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountBook = null,
    Object? revision = null,
  }) {
    return _then(_$_FetchAccountBookResponse(
      accountBook: null == accountBook
          ? _value.accountBook
          : accountBook // ignore: cast_nullable_to_non_nullable
              as AccountBook,
      revision: null == revision
          ? _value.revision
          : revision // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FetchAccountBookResponse
    with DiagnosticableTreeMixin
    implements _FetchAccountBookResponse {
  const _$_FetchAccountBookResponse(
      {required this.accountBook, required this.revision});

  factory _$_FetchAccountBookResponse.fromJson(Map<String, dynamic> json) =>
      _$$_FetchAccountBookResponseFromJson(json);

  @override
  final AccountBook accountBook;
  @override
  final int revision;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FetchAccountBookResponse(accountBook: $accountBook, revision: $revision)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FetchAccountBookResponse'))
      ..add(DiagnosticsProperty('accountBook', accountBook))
      ..add(DiagnosticsProperty('revision', revision));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchAccountBookResponse &&
            (identical(other.accountBook, accountBook) ||
                other.accountBook == accountBook) &&
            (identical(other.revision, revision) ||
                other.revision == revision));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accountBook, revision);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchAccountBookResponseCopyWith<_$_FetchAccountBookResponse>
      get copyWith => __$$_FetchAccountBookResponseCopyWithImpl<
          _$_FetchAccountBookResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FetchAccountBookResponseToJson(
      this,
    );
  }
}

abstract class _FetchAccountBookResponse implements FetchAccountBookResponse {
  const factory _FetchAccountBookResponse(
      {required final AccountBook accountBook,
      required final int revision}) = _$_FetchAccountBookResponse;

  factory _FetchAccountBookResponse.fromJson(Map<String, dynamic> json) =
      _$_FetchAccountBookResponse.fromJson;

  @override
  AccountBook get accountBook;
  @override
  int get revision;
  @override
  @JsonKey(ignore: true)
  _$$_FetchAccountBookResponseCopyWith<_$_FetchAccountBookResponse>
      get copyWith => throw _privateConstructorUsedError;
}
