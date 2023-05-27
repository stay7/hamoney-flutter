// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_book_members_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccountBookMembersResponse _$$_AccountBookMembersResponseFromJson(
        Map<String, dynamic> json) =>
    _$_AccountBookMembersResponse(
      status: json['status'] as int,
      accountBookId: json['accountBookId'] as int,
      members: (json['members'] as List<dynamic>)
          .map((e) => MemberResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AccountBookMembersResponseToJson(
        _$_AccountBookMembersResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'accountBookId': instance.accountBookId,
      'members': instance.members,
    };
