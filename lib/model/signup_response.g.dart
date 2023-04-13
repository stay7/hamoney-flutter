// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignupResponse _$$_SignupResponseFromJson(Map<String, dynamic> json) =>
    _$_SignupResponse(
      id: json['id'] as String,
      email: json['email'] as String,
      nickname: json['nickname'] as String,
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$$_SignupResponseToJson(_$_SignupResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'nickname': instance.nickname,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
