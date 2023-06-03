import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../model/member_pay.dart';

part 'member_response.freezed.dart';

part 'member_response.g.dart';

@freezed
class MemberResponse with _$MemberResponse {
  const factory MemberResponse({required String userId, required String nickname, required List<MemberPay> payments}) =
      _MemberResponse;

  factory MemberResponse.fromJson(Map<String, dynamic> json) => _$MemberResponseFromJson(json);
}
