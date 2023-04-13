// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignupRequest _$$_SignupRequestFromJson(Map<String, dynamic> json) =>
    _$_SignupRequest(
      nickname: json['nickname'] as String,
      email: json['email'] as String,
      token: json['token'] as String,
    );

Map<String, dynamic> _$$_SignupRequestToJson(_$_SignupRequest instance) =>
    <String, dynamic>{
      'nickname': instance.nickname,
      'email': instance.email,
      'token': instance.token,
    };
