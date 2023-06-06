import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hamoney/db/hive_type_id.dart';
import 'package:hive/hive.dart';

part 'member_pay.freezed.dart';

part 'member_pay.g.dart';

@freezed
@HiveType(typeId: HiveTypeId.memberPay)
class MemberPay with _$MemberPay {
  const factory MemberPay({
    @HiveField(0) required int id,
    @HiveField(1) required String name,
    @HiveField(2) required int iconId,
  }) = _MemberPay;

  factory MemberPay.fromJson(Map<String, dynamic> json) => _$MemberPayFromJson(json);
}
