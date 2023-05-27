import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'member_pay.freezed.dart';

part 'member_pay.g.dart';

@freezed
class MemberPay with _$MemberPay {
  const factory MemberPay({required int id, required String name, required int iconId}) = _MemberPay;

  factory MemberPay.fromJson(Map<String, dynamic> json) => _$MemberPayFromJson(json);
}
