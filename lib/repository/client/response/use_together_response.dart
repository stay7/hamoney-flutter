import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'use_together_response.freezed.dart';

part 'use_together_response.g.dart';

@freezed
class UseTogetherResponse with _$UseTogetherResponse {
  const factory UseTogetherResponse({
    required String code,
  }) = _UseTogetherResponse;

  factory UseTogetherResponse.fromJson(Map<String, dynamic> json) => _$UseTogetherResponseFromJson(json);
}
