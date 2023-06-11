import 'package:hamoney/db/account_book_box.dart';
import 'package:hamoney/db/member_box.dart';
import 'package:hamoney/model/account_book_member.dart';
import 'package:logger/logger.dart';

class FindAccountBookMember {
  FindAccountBookMember({
    required AccountBookHive accountBookHive,
    required MemberHive memberHive,
  })  : _accountBookHive = accountBookHive,
        _memberHive = memberHive;

  final AccountBookHive _accountBookHive;
  final MemberHive _memberHive;
  final Logger logger = Logger();

  AccountBookMember? current() {
    final curAccountBook = _accountBookHive.currentAccountBook();
    if (curAccountBook == null) return null;
    final memberIds = _accountBookHive.findMemberIds(curAccountBook.id);

    return AccountBookMember(
      accountBook: curAccountBook,
      members: _memberHive.findAll(memberIds),
    );
  }

  AccountBookMember byId(int accountBookId) {
    final memberIds = _accountBookHive.findMemberIds(accountBookId);

    return AccountBookMember(
      accountBook: _accountBookHive.findAccountBook(accountBookId)!,
      members: _memberHive.findAll(memberIds),
    );
  }
}
