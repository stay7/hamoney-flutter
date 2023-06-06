import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_book_status.freezed.dart';

part 'account_book_status.g.dart';

@freezed
class AccountBookStatus with _$AccountBookStatus {
  const factory AccountBookStatus({
    required int accountBookId,
    required List<int> members,
    required int revision,
  }) = _AccountBookStatus;

  factory AccountBookStatus.fromJson(Map<String, dynamic> json) => _$AccountBookStatusFromJson(json);
}
