import 'package:hamoney/repository/account_book_repository.dart';
import 'package:hamoney/repository/member_repository.dart';
import 'package:hamoney/repository/user_repository.dart';

class LoadRequiredData {
  final UserRepository _userRepository;
  final AccountBookRepository _accountBookRepository;
  final MemberRepository _memberRepository;

  LoadRequiredData({
    required UserRepository userRepository,
    required AccountBookRepository accountBookRepository,
    required MemberRepository memberRepository,
  })  : _userRepository = userRepository,
        _accountBookRepository = accountBookRepository,
        _memberRepository = memberRepository;

  void invoke() {
    final accountBook = _accountBookRepository.loadCurrentAccountBook();
    _memberRepository.loadMembers(accountBook.id);
    _userRepository.loadUser();
  }
}
