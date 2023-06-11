// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_book_member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccountBookMember _$$_AccountBookMemberFromJson(Map<String, dynamic> json) =>
    _$_AccountBookMember(
      accountBook:
          AccountBook.fromJson(json['accountBook'] as Map<String, dynamic>),
      members: (json['members'] as List<dynamic>)
          .map((e) => Member.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AccountBookMemberToJson(
        _$_AccountBookMember instance) =>
    <String, dynamic>{
      'accountBook': instance.accountBook,
      'members': instance.members,
    };
