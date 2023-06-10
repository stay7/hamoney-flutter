// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MemberResponse _$$_MemberResponseFromJson(Map<String, dynamic> json) =>
    _$_MemberResponse(
      id: json['id'] as int,
      nickname: json['nickname'] as String,
      payments: (json['payments'] as List<dynamic>)
          .map((e) => MemberPay.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MemberResponseToJson(_$_MemberResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nickname': instance.nickname,
      'payments': instance.payments,
    };
