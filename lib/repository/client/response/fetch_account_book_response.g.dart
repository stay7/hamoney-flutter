// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_account_book_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FetchAccountBookResponse _$$_FetchAccountBookResponseFromJson(
        Map<String, dynamic> json) =>
    _$_FetchAccountBookResponse(
      accountBook:
          AccountBook.fromJson(json['accountBook'] as Map<String, dynamic>),
      revision: json['revision'] as int,
    );

Map<String, dynamic> _$$_FetchAccountBookResponseToJson(
        _$_FetchAccountBookResponse instance) =>
    <String, dynamic>{
      'accountBook': instance.accountBook,
      'revision': instance.revision,
    };
