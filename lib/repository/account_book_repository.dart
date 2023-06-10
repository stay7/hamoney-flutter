import 'package:hamoney/db/account_book_box.dart';
import 'package:hamoney/db/member_box.dart';
import 'package:hamoney/model/account_book.dart';
import 'package:hamoney/model/member.dart';
import 'package:hamoney/model/member_pay.dart';
import 'package:hamoney/repository/client/account_book_client.dart';
import 'package:hamoney/repository/client/request/use_together_request.dart';
import 'package:hamoney/repository/client/response/use_together_response.dart';
import 'package:logger/logger.dart';

import '../secure_storage.dart';
import 'client/response/member_response.dart';
import 'client/response/use_alone_response.dart';

class AccountBookRepository {
  AccountBookRepository({
    required AccountBookClient accountBookClient,
    required AccountBookHive accountBookHive,
    required MemberHive memberHive,
    required SecureStorage secureStorage,
  })  : _accountBookClient = accountBookClient,
        _accountBookHive = accountBookHive,
        _memberHive = memberHive,
        _secureStorage = secureStorage;

  final AccountBookClient _accountBookClient;
  final AccountBookHive _accountBookHive;
  final MemberHive _memberHive;
  final SecureStorage _secureStorage;

  final Logger logger = Logger();

  late AccountBook _curAccountBook;

  late List<Member> _curMembers;

  Future<void> initialize() async {
    final savedAccountBookId = await _secureStorage.lastUsedAccountBookId();

    if (savedAccountBookId != null) {
      selectAccountBook(savedAccountBookId);
    }
  }

  void selectAccountBook(int accountBookId) {
    _curAccountBook = _accountBookHive.find(accountBookId)!;
    final memberIds = _accountBookHive.findMemberIds(accountBookId);
    _curMembers = memberIds.map((e) => _memberHive.find(e)!).toList();
    _secureStorage.saveLastUsedAccountBookId(accountBookId);
  }

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
    _accountBookHive.save(response.data.accountBook.id, response.data.accountBook);
    _accountBookHive.saveRevision(accountBookId, response.data.revision);
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

  List<Member> get members => _curMembers;

  AccountBook get accountBook => _curAccountBook;
}
