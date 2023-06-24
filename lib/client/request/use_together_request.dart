import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'use_together_request.freezed.dart';

part 'use_together_request.g.dart';

@freezed
class UseTogetherRequest with _$UseTogetherRequest {
  const factory UseTogetherRequest({
    required int invitationCode,
  }) = _UseTogetherRequest;

  factory UseTogetherRequest.fromJson(Map<String, dynamic> json) => _$UseTogetherRequestFromJson(json);
}
