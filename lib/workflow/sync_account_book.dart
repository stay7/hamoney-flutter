import 'package:hamoney/repository/account_book_repository.dart';
import 'package:hamoney/client/response/member_response.dart';
import 'package:hamoney/repository/spending_repository.dart';

import '../repository/member_repository.dart';

/**
 * 가계부 정보, 카테고리 업데이트
 * 멤버 목록 업데이트
 * TODO: 지출 내역 업데이트
 */
class ManualSyncAccountBook {
  ManualSyncAccountBook({
    required SpendingRepository spendingRepository,
    required AccountBookRepository accountBookRepository,
    required MemberRepository memberRepository,
  })  : _spendingRepository = spendingRepository,
        _accountBookRepository = accountBookRepository,
        _memberRepository = memberRepository;

  final SpendingRepository _spendingRepository;
  final AccountBookRepository _accountBookRepository;
  final MemberRepository _memberRepository;

  //  TODO: spending 동기화
  Future<DateTime> invoke(int accountBookId) async {
    final now = DateTime.now();
    final accountBook = await _accountBookRepository.fetchAccountBook(accountBookId);
    final members = await _memberRepository.fetchMembers(accountBookId);

    await Future.wait([
      _accountBookRepository.saveAccountBook(accountBook),
      _accountBookRepository.saveFetchedAt(accountBookId, now),
      _memberRepository.saveAll(accountBookId, members)
    ]);

    return now;
  }
}
