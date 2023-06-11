import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'account_book.dart';
import 'member.dart';

part 'account_book_member.freezed.dart';

part 'account_book_member.g.dart';

@freezed
class AccountBookMember with _$AccountBookMember {
  const factory AccountBookMember({
    required AccountBook accountBook,
    required List<Member> members,
  }) = _AccountBookMember;

  factory AccountBookMember.fromJson(Map<String, dynamic> json) => _$AccountBookMemberFromJson(json);
}
