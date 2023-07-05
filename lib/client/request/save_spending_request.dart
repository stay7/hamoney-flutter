import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'save_spending_request.freezed.dart';

part 'save_spending_request.g.dart';

@freezed
class SaveSpendingRequest with _$SaveSpendingRequest {
  const factory SaveSpendingRequest(
      {required int accountBookId,
      required int categoryId,
      required int subCategoryId,
      required int paymentId,
      required int amount,
      required String? memo,
      required String date,
      required String? repeatPeriod,
      required bool skipSum}) = _SaveSpendingRequest;

  factory SaveSpendingRequest.fromJson(Map<String, dynamic> json) => _$SaveSpendingRequestFromJson(json);
}
