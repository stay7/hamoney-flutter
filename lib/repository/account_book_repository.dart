import 'package:hamoney/model/account_book.dart';
import 'package:hamoney/model/member.dart';
import 'package:hamoney/model/member_pay.dart';
import 'package:hamoney/repository/client/account_book_client.dart';
import 'package:hamoney/repository/response/member_response.dart';
import 'package:logger/logger.dart';

import '../secure_storage.dart';

class AccountBookRepository {
  AccountBookRepository({required AccountBookClient accountBookClient}) : _accountBookClient = accountBookClient;

  final AccountBookClient _accountBookClient;
  late AccountBook accountBook;
  final Logger logger = Logger();
  late List<Member> members;

  Future<void> useAlone() async {
    final response = await _accountBookClient.useAlone();
    await SecureStorage().saveLastUsedAccountBookId(response.data.accountBookId);
  }

  Future<void> getAccountBook() async {
    final accountBookId = await SecureStorage().storage.read(key: SecureStorageKey.lastUsedAccountBookId);
    final response = await _accountBookClient.getAccountBook(int.parse(accountBookId!));
    accountBook = response.data;
  }

  Future<void> getMembers() async {
    final accountBookId = await SecureStorage().storage.read(key: SecureStorageKey.lastUsedAccountBookId);
    final response = await _accountBookClient.getMembers(int.parse(accountBookId!));

    members = response.data.members.map((e) => _fromMemberResponse(e)).toList();
    logger.i(members);
  }

  Member _fromMemberResponse(MemberResponse response) {
    return Member(
      id: response.userId,
      nickname: response.nickname,
      payments: response.payments.map((e) => MemberPay(id: e.id, name: e.name, iconId: e.iconId)).toList(),
    );
  }
}
