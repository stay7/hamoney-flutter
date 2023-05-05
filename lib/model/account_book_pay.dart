import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_book_pay.freezed.dart';

part 'account_book_pay.g.dart';

@freezed
class AccountBookPay with _$AccountBookPay {
  const factory AccountBookPay({required int id, required String name, required int iconId}) = _AccountBookPay;

  factory AccountBookPay.fromJson(Map<String, dynamic> json) => _$AccountBookPayFromJson(json);
}
