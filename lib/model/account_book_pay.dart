import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hamoney/db/hive_type_id.dart';
import 'package:hive/hive.dart';

part 'account_book_pay.freezed.dart';

part 'account_book_pay.g.dart';

@freezed
class AccountBookPay with _$AccountBookPay {
  @HiveType(typeId: HiveTypeId.accountBookPay)
  const factory AccountBookPay({
    @HiveField(0) required int id,
    @HiveField(1) required String name,
    @HiveField(2) required int iconId,
  }) = _AccountBookPay;

  factory AccountBookPay.fromJson(Map<String, dynamic> json) => _$AccountBookPayFromJson(json);
}
