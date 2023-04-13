import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_response.g.dart';
part 'signup_response.freezed.dart';

@freezed
class SignupResponse with _$SignupResponse {
  factory SignupResponse({
    required String id,
    required String email,
    required String nickname,
    required String accessToken,
    required String refreshToken,
  }) = _SignupResponse;

  factory SignupResponse.fromJson(Map<String, Object?> json) => _$SignupResponseFromJson(json);
}
