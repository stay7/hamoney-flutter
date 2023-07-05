// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_spending_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SaveSpendingRequest _$$_SaveSpendingRequestFromJson(
        Map<String, dynamic> json) =>
    _$_SaveSpendingRequest(
      accountBookId: json['accountBookId'] as int,
      categoryId: json['categoryId'] as int,
      subCategoryId: json['subCategoryId'] as int,
      paymentId: json['paymentId'] as int,
      amount: json['amount'] as int,
      memo: json['memo'] as String?,
      date: json['date'] as String,
      repeatPeriod: json['repeatPeriod'] as String?,
      skipSum: json['skipSum'] as bool,
    );

Map<String, dynamic> _$$_SaveSpendingRequestToJson(
        _$_SaveSpendingRequest instance) =>
    <String, dynamic>{
      'accountBookId': instance.accountBookId,
      'categoryId': instance.categoryId,
      'subCategoryId': instance.subCategoryId,
      'paymentId': instance.paymentId,
      'amount': instance.amount,
      'memo': instance.memo,
      'date': instance.date,
      'repeatPeriod': instance.repeatPeriod,
      'skipSum': instance.skipSum,
    };
