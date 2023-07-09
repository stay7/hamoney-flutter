import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'spending.freezed.dart';

part 'spending.g.dart';

/**
 * Spending은 쿼리가 필요할 것 같으니 Hive를 쓰지 않고 RDB를 쓴다
 */
@freezed
class Spending with _$Spending {
  const factory Spending({
    required int id,
    required String spendAt,
    required int amount,
    required int categoryId,
    required int subCategoryId,
    required int paymentId,
    required bool skipSum,
    String? memo,
  }) = _Spending;

  factory Spending.fromJson(Map<String, dynamic> json) => _$SpendingFromJson(json);
}
