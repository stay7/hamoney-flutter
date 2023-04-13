import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'oauth_request.freezed.dart';

part 'oauth_request.g.dart';

@freezed
class OAuthRequest with _$OAuthRequest {
  const factory OAuthRequest({
    required String token,
    required String email,
  }) = _OAuthRequest;

  factory OAuthRequest.fromJson(Map<String, dynamic> json) => _$OAuthRequestFromJson(json);
}
