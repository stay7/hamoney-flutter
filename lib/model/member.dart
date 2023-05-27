import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'member_pay.dart';

part 'member.freezed.dart';

part 'member.g.dart';

@freezed
class Member with _$Member {
  const factory Member({
    required String id,
    required String nickname,
    required List<MemberPay> payments
  }) = _Member;


  factory Member.fromJson(Map<String, dynamic> json) =>
      _$MemberFromJson(json);
}