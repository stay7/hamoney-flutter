import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hamoney/db/hive_type_id.dart';
import 'package:hive/hive.dart';

part 'spending.freezed.dart';

part 'spending.g.dart';

@freezed
@HiveType(typeId: HiveTypeId.spending)
class Spending with _$Spending {
  const factory Spending({
    @HiveField(0) required int id,
    @HiveField(1) required String spendAt,
    @HiveField(2) required int amount,
    @HiveField(3) required int categoryId,
    @HiveField(4) required int subCategoryId,
    @HiveField(5) required int paymentId,
    @HiveField(6) required bool skipSum,
    @HiveField(7) String? memo,
  }) = _Spending;

  factory Spending.fromJson(Map<String, dynamic> json) => _$SpendingFromJson(json);
}
