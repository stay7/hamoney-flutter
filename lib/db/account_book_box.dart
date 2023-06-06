import 'dart:async';

import 'package:hamoney/model/account_book_pay.dart';
import 'package:hamoney/model/category.dart';
import 'package:hamoney/model/sub_category.dart';
import 'package:hive/hive.dart';

import '../model/account_book.dart';

class AccountBookHive {
  static const String accountBookKey = "account_book";
  static const String accountBookRevisionKey = "account_book_revision";

  AccountBookHive();

  late Box<AccountBook> _accountBookBox;
  late Box<int> _revisionBox;
  late Box<List<int>> _membersBox;

  Future<void> initialize() async {
    Hive.registerAdapter<AccountBook>(AccountBookAdapter());
    Hive.registerAdapter<Category>(CategoryAdapter());
    Hive.registerAdapter<SubCategory>(SubCategoryAdapter());
    Hive.registerAdapter<AccountBookPay>(AccountBookPayAdapter());

    _accountBookBox = await Hive.openBox<AccountBook>(accountBookKey);
    _revisionBox = await Hive.openBox<int>(accountBookRevisionKey);
  }

  void save(int accountBookId, AccountBook accountBook) {
    _accountBookBox.put(accountBookId, accountBook);
  }

  AccountBook? find(int accountBookId) {
    return _accountBookBox.get(accountBookId);
  }

  int? findRevision(int accountBookId) {
    return _revisionBox.get(accountBookId);
  }

  void saveRevision(int accountBookId, int revision) {
    _revisionBox.put(accountBookId, revision);
  }

  void saveMembers(int accountBookId, List<int> members) {
    _membersBox.put(accountBookId, members);
  }

  List<int> findMembers(int accountBookId) {
    return _membersBox.get(accountBookId) ?? List.empty();
  }
}
