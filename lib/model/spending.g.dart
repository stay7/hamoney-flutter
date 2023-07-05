// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spending.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Spending _$$_SpendingFromJson(Map<String, dynamic> json) => _$_Spending(
      id: json['id'] as int,
      spendAt: json['spendAt'] as String,
      amount: json['amount'] as int,
      categoryId: json['categoryId'] as int,
      subCategoryId: json['subCategoryId'] as int,
      paymentId: json['paymentId'] as int,
      skipSum: json['skipSum'] as bool,
      memo: json['memo'] as String?,
    );

Map<String, dynamic> _$$_SpendingToJson(_$_Spending instance) =>
    <String, dynamic>{
      'id': instance.id,
      'spendAt': instance.spendAt,
      'amount': instance.amount,
      'categoryId': instance.categoryId,
      'subCategoryId': instance.subCategoryId,
      'paymentId': instance.paymentId,
      'skipSum': instance.skipSum,
      'memo': instance.memo,
    };
