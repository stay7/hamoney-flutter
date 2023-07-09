import 'package:hamoney/repository/account_book_repository.dart';
import 'package:hamoney/client/status_client.dart';
import 'package:hamoney/repository/member_repository.dart';
import 'package:hamoney/repository/user_repository.dart';

import 'load_required.dart';

class UpdateStatus {
  final StatusClient _statusClient;
  final UserRepository _userRepository;
  final AccountBookRepository _accountBookRepository;
  final MemberRepository _memberRepository;
  final LoadRequiredData _loadRequiredData;

  UpdateStatus({
    required StatusClient statusClient,
    required UserRepository userRepository,
    required AccountBookRepository accountBookRepository,
    required MemberRepository memberRepository,
    required LoadRequiredData loadRequiredData,
  })  : _accountBookRepository = accountBookRepository,
        _statusClient = statusClient,
        _memberRepository = memberRepository,
        _userRepository = userRepository,
        _loadRequiredData = loadRequiredData;

  Future<void> fetch() async {
    final response = await _statusClient.status();

    if (_userRepository.findUser() != response.data.me) {
      _userRepository.user = response.data.me;
      await _userRepository.saveUser(response.data.me);
    }

    for (var element in response.data.accountBooks) {
      final accountBookId = element.accountBookId;
      final savedRevision = _accountBookRepository.findRevision(accountBookId);

      // 리비전은 카테고리가 삭제되면 작아질 수 있다
      if (savedRevision != element.revision) {
        final accountBook = await _accountBookRepository.fetchAccountBook(accountBookId);
        await _accountBookRepository.saveAccountBook(accountBook);
      }

      final memberIds = _memberRepository.findAll(accountBookId).map((e) => e.id).toSet();

      if (memberIds != element.members.toSet()) {
        final members = await _memberRepository.fetchMembers(accountBookId);
        await _memberRepository.saveAll(accountBookId, members);
      }

      // 앱 재설치 경우에는 currentAccountBookId가 저장되어 있지 않다
      if (_accountBookRepository.findCurrentAccountBook() == null) {
        await _accountBookRepository.saveCurrentAccountBookId(element.accountBookId);
        _loadRequiredData.invoke();
      }
    }
  }
}
