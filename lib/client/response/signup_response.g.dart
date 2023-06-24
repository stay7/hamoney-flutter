// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignupResponse _$$_SignupResponseFromJson(Map<String, dynamic> json) =>
    _$_SignupResponse(
      message: json['message'] as String?,
      status: json['status'] as int,
      id: json['id'] as int,
      email: json['email'] as String,
      nickname: json['nickname'] as String,
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$$_SignupResponseToJson(_$_SignupResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
      'id': instance.id,
      'email': instance.email,
      'nickname': instance.nickname,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
