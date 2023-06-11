import 'package:hamoney/db/account_book_box.dart';
import 'package:hamoney/repository/account_book_repository.dart';
import 'package:hamoney/repository/client/status_client.dart';
import 'package:hamoney/repository/user_repository.dart';

import '../db/member_box.dart';
import '../db/user_hive.dart';

class UpdateStatus {
  final StatusClient statusClient;
  final UserRepository userRepository;
  final AccountBookRepository accountBookRepository;
  final AccountBookHive accountBookHive;
  final MemberHive memberHive;
  final UserHive userHive;

  UpdateStatus({
    required this.statusClient,
    required this.userRepository,
    required this.accountBookRepository,
    required this.accountBookHive,
    required this.memberHive,
    required this.userHive,
  });

  void fetch() async {
    final response = await statusClient.status();

    if (userHive.findMe() != response.data.me) {
      userHive.save(response.data.me);
      userRepository.user = response.data.me;
    }

    for (var element in response.data.accountBooks) {
      final accountBookId = element.accountBookId;
      final clientRevision = accountBookHive.findRevision(accountBookId);
      final memberIds = element.members;

      // 리비전이 없거나 클라 리비전보다 서버 리비전이 크면 accountBook을 받아서 저장한다
      if (clientRevision == null || clientRevision < element.revision) {
        await accountBookRepository.fetchAccountBook(accountBookId);
      }

      if (memberIds != accountBookHive.findMemberIds(accountBookId)) {
        final members = await accountBookRepository.fetchMembers(accountBookId);
        await accountBookHive.saveMemberIds(accountBookId, members.map((e) => e.id).toList());
      }
    }
  }
}
