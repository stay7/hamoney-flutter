import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../model/user.dart';
import 'account_book_status.dart';

part 'status_response.freezed.dart';

part 'status_response.g.dart';

@freezed
class StatusResponse with _$StatusResponse {
  const factory StatusResponse({
    required User me,
    required List<AccountBookStatus> accountBooks,
  }) = _StatusResponse;

  factory StatusResponse.fromJson(Map<String, dynamic> json) => _$StatusResponseFromJson(json);
}
