import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_book_id_response.freezed.dart';

part 'account_book_id_response.g.dart';

@freezed
class AccountBookIdResponse with _$AccountBookIdResponse {
  const factory AccountBookIdResponse({required int status, required int accountBookId}) = _AccountBookIdResponse;

  factory AccountBookIdResponse.fromJson(Map<String, dynamic> json) => _$AccountBookIdResponseFromJson(json);
}
