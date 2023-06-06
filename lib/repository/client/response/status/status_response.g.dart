// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StatusResponse _$$_StatusResponseFromJson(Map<String, dynamic> json) =>
    _$_StatusResponse(
      me: User.fromJson(json['me'] as Map<String, dynamic>),
      accountBooks: (json['accountBooks'] as List<dynamic>)
          .map((e) => AccountBookStatus.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_StatusResponseToJson(_$_StatusResponse instance) =>
    <String, dynamic>{
      'me': instance.me,
      'accountBooks': instance.accountBooks,
    };
