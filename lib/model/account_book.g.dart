// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccountBook _$$_AccountBookFromJson(Map<String, dynamic> json) =>
    _$_AccountBook(
      id: json['id'] as int,
      name: json['name'] as String,
      categories: (json['categories'] as List<dynamic>)
          .map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] as int,
    );

Map<String, dynamic> _$$_AccountBookToJson(_$_AccountBook instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'categories': instance.categories,
      'createdAt': instance.createdAt,
    };
