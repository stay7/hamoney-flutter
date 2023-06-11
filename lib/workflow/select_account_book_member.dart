import 'package:hamoney/db/account_book_box.dart';
import 'package:hamoney/repository/account_book_repository.dart';
import 'package:hamoney/workflow/find_account_book_member.dart';

class SelectAccountBookMember {
  SelectAccountBookMember({
    required AccountBookRepository accountBookRepository,
    required FindAccountBookMember findAccountBookMember,
    required AccountBookHive accountBookHive,
  })  : _accountBookRepository = accountBookRepository,
        _findAccountBookMember = findAccountBookMember,
        _accountBookHive = accountBookHive;

  final AccountBookRepository _accountBookRepository;
  final FindAccountBookMember _findAccountBookMember;
  final AccountBookHive _accountBookHive;

  Future<void> invoke(int accountBookId) async {
    final accountBookMember = _findAccountBookMember.byId(accountBookId);
    _accountBookRepository.curAccountBookMember = accountBookMember;
    _accountBookRepository.fetchedAt = _accountBookHive.findFetchedAt(accountBookId)!;
    _accountBookHive.saveCurrentAccountBook(accountBookMember.accountBook);
  }
}
