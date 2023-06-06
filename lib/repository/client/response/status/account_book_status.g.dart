// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_book_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccountBookStatus _$$_AccountBookStatusFromJson(Map<String, dynamic> json) =>
    _$_AccountBookStatus(
      accountBookId: json['accountBookId'] as int,
      members: (json['members'] as List<dynamic>).map((e) => e as int).toList(),
      revision: json['revision'] as int,
    );

Map<String, dynamic> _$$_AccountBookStatusToJson(
        _$_AccountBookStatus instance) =>
    <String, dynamic>{
      'accountBookId': instance.accountBookId,
      'members': instance.members,
      'revision': instance.revision,
    };
