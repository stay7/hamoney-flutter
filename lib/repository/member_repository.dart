import 'package:hamoney/client/account_book_client.dart';

import '../client/response/member_response.dart';
import '../db/member_box.dart';
import '../model/member.dart';
import '../model/member_pay.dart';

class MemberRepository {
  final MemberHive _memberHive;
  final AccountBookClient _accountBookClient;

  MemberRepository({
    required MemberHive memberHive,
    required AccountBookClient accountBookClient,
  })  : _memberHive = memberHive,
        _accountBookClient = accountBookClient;

  List<Member> members = List.empty();

  List<Member> loadMembers(int accountBookId) {
    members = findAll(accountBookId).toList();
    return members;
  }

  Future<List<Member>> fetchMembers(int accountBookId) async {
    final response = await _accountBookClient.getMembers(accountBookId);
    final members = response.data.members.map((e) => _fromMemberResponse(e)).toList();
    return members;
  }

  Future<void> saveAll(int accountBookId, List<Member> members) async {
    await _memberHive.saveAll(accountBookId, members);
  }

  Set<Member> findAll(int accountBookId) {
    return _memberHive.findAll(accountBookId).toSet();
  }

  Member _fromMemberResponse(MemberResponse response) {
    return Member(
      id: response.id,
      nickname: response.nickname,
      payments: response.payments.map((e) => MemberPay(id: e.id, name: e.name, iconId: e.iconId)).toList(),
    );
  }
}
