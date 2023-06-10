import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hamoney/db/hive_type_id.dart';
import 'package:hive/hive.dart';

import 'member_pay.dart';

part 'member.freezed.dart';

part 'member.g.dart';

@freezed
@HiveType(typeId: HiveTypeId.member)
class Member with _$Member {
  const factory Member({
    @HiveField(0) required int id,
    @HiveField(1) required String nickname,
    @HiveField(2) required List<MemberPay> payments,
  }) = _Member;

  factory Member.fromJson(Map<String, dynamic> json) => _$MemberFromJson(json);
}
