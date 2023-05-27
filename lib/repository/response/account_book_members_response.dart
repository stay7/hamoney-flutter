import 'package:freezed_annotation/freezed_annotation.dart';

import 'member_response.dart';

part 'account_book_members_response.freezed.dart';

part 'account_book_members_response.g.dart';

@freezed
class AccountBookMembersResponse with _$AccountBookMembersResponse {
  const factory AccountBookMembersResponse({
    required int status,
    required int accountBookId,
    required List<MemberResponse> members,
  }) = _AccountBookMembersResponse;

  factory AccountBookMembersResponse.fromJson(Map<String, dynamic> json) => _$AccountBookMembersResponseFromJson(json);
}
