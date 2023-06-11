import 'package:hamoney/db/account_book_box.dart';
import 'package:hamoney/db/member_box.dart';
import 'package:hamoney/model/account_book_member.dart';
import 'package:hamoney/model/member.dart';
import 'package:hamoney/model/member_pay.dart';
import 'package:hamoney/repository/client/account_book_client.dart';
import 'package:hamoney/repository/client/request/use_together_request.dart';
import 'package:hamoney/repository/client/response/use_together_response.dart';
import 'package:logger/logger.dart';

import 'client/response/member_response.dart';
import 'client/response/use_alone_response.dart';

class AccountBookRepository {
  AccountBookRepository({
    required AccountBookClient accountBookClient,
    required AccountBookHive accountBookHive,
    required MemberHive memberHive,
  })  : _accountBookClient = accountBookClient,
        _accountBookHive = accountBookHive,
        _memberHive = memberHive;

  final AccountBookClient _accountBookClient;
  final AccountBookHive _accountBookHive;
  final MemberHive _memberHive;

  final Logger logger = Logger();

  late AccountBookMember curAccountBookMember;
  late DateTime fetchedAt;

  Future<UseAloneResponse> useAlone() async {
    final response = await _accountBookClient.useAlone();
    return response.data;
  }

  Future<UseTogetherResponse> useTogether(int invitationCode) async {
    final response = await _accountBookClient.useTogether(UseTogetherRequest(invitationCode: invitationCode));
    return response.data;
  }

  Future<void> fetchAccountBook(int accountBookId) async {
    final response = await _accountBookClient.getAccountBook(accountBookId);

    Future.wait(<Future<void>>[
      _accountBookHive.saveAccountBook(response.data.accountBook.id, response.data.accountBook),
      _accountBookHive.saveRevision(accountBookId, response.data.revision),
      _accountBookHive.saveFetchedAt(accountBookId, DateTime.now())
    ]);
  }

  Future<List<Member>> fetchMembers(int accountBookId) async {
    final response = await _accountBookClient.getMembers(accountBookId);
    final members = response.data.members.map((e) => _fromMemberResponse(e)).toList();
    _memberHive.saveAll(members);
    return members;
  }

  Member _fromMemberResponse(MemberResponse response) {
    return Member(
      id: response.id,
      nickname: response.nickname,
      payments: response.payments.map((e) => MemberPay(id: e.id, name: e.name, iconId: e.iconId)).toList(),
    );
  }
}
