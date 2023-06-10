import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'oauth_token.freezed.dart';

part 'oauth_token.g.dart';

@freezed
class OAuthToken with _$OAuthToken {
  const factory OAuthToken({
    required String accessToken,
    required String refreshToken,
  }) = _OAuthToken;

  factory OAuthToken.fromJson(Map<String, dynamic> json) => _$OAuthTokenFromJson(json);
}
