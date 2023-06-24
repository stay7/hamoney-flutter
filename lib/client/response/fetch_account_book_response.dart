import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model/account_book.dart';

part 'fetch_account_book_response.freezed.dart';

part 'fetch_account_book_response.g.dart';

@freezed
class FetchAccountBookResponse with _$FetchAccountBookResponse {
  const factory FetchAccountBookResponse({
    required AccountBook accountBook,
    required int revision,
  }) = _FetchAccountBookResponse;

  factory FetchAccountBookResponse.fromJson(Map<String, dynamic> json) => _$FetchAccountBookResponseFromJson(json);
}
