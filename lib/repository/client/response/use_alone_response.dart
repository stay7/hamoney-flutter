import 'package:freezed_annotation/freezed_annotation.dart';

part 'use_alone_response.freezed.dart';

part 'use_alone_response.g.dart';

@freezed
class UseAloneResponse with _$UseAloneResponse {
  const factory UseAloneResponse({
    required int status,
    required int accountBookId,
    required int invitationCode,
  }) = _UseAloneResponse;

  factory UseAloneResponse.fromJson(Map<String, dynamic> json) => _$UseAloneResponseFromJson(json);
}
