import 'package:hamoney/db/account_book_box.dart';
import 'package:hamoney/model/account_book.dart';
import 'package:hamoney/model/member.dart';
import 'package:hamoney/model/member_pay.dart';
import 'package:hamoney/repository/client/account_book_client.dart';
import 'package:hamoney/repository/client/request/use_together_request.dart';
import 'package:logger/logger.dart';

import '../secure_storage.dart';
import 'client/response/member_response.dart';

class AccountBookRepository {
  AccountBookRepository({
    required this.accountBookClient,
    required this.accountBookBox,
  });

  final AccountBookClient accountBookClient;
  final AccountBookBox accountBookBox;

  final Logger logger = Logger();

  late List<AccountBook> _accountBooks;
  List<AccountBook> get accountBooks => _accountBooks;

  late AccountBook _accountBook;
  AccountBook get accountBook => _accountBook;

  late List<Member> _members;
  List<Member> get members => _members;

  // lastUsedAccountBook을 저장하면 되지 않을까?
  Future<void> initialize() async {
    final lastUsedAccountBookId = await SecureStorage().storage.read(key: SecureStorageKey.lastUsedAccountBookId);
    if (lastUsedAccountBookId != null) {
      logger.i(_accountBook);
    }
  }

  Future<int> useAlone() async {
    final response = await accountBookClient.useAlone();
    await SecureStorage().saveLastUsedAccountBookId(response.data.accountBookId);
    return response.data.invitationCode;
  }

  Future<void> useTogether(int invitationCode) async {
    final response = await accountBookClient.useTogether(UseTogetherRequest(invitationCode: invitationCode));
    await SecureStorage().saveLastUsedAccountBookId(response.data.accountBookId);
  }

  Future<void> getAccountBook() async {
    final accountBookId = await SecureStorage().storage.read(key: SecureStorageKey.lastUsedAccountBookId);
    final response = await accountBookClient.getAccountBook(int.parse(accountBookId!));
    _accountBook = response.data;
    AccountBookBox().save(_accountBook.id, _accountBook);
  }

  Future<void> getMembers() async {
    final accountBookId = await SecureStorage().storage.read(key: SecureStorageKey.lastUsedAccountBookId);
    final response = await accountBookClient.getMembers(int.parse(accountBookId!));

    _members = response.data.members.map((e) => _fromMemberResponse(e)).toList();
    logger.i(_members);
  }

  Member _fromMemberResponse(MemberResponse response) {
    return Member(
      id: response.userId,
      nickname: response.nickname,
      payments: response.payments.map((e) => MemberPay(id: e.id, name: e.name, iconId: e.iconId)).toList(),
    );
  }
}
