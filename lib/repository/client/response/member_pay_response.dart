import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'member_pay_response.freezed.dart';
part 'member_pay_response.g.dart';

@freezed
class MemberPayRepsonse with _$MemberPayRepsonse {
  const factory MemberPayRepsonse({
    required int id,
    required int iconId,
    required String name
  }) = _MemberPayRepsonse;



  factory MemberPayRepsonse.fromJson(Map<String, dynamic> json) =>
      _$MemberPayRepsonseFromJson(json);
}