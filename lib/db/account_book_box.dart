import 'dart:async';

import 'package:hamoney/model/account_book_pay.dart';
import 'package:hamoney/model/category.dart';
import 'package:hamoney/model/sub_category.dart';
import 'package:hive/hive.dart';

import '../model/account_book.dart';

class AccountBookHive {
  static const String accountBookKey = "account_book";
  static const String memberKey = "account_book_member";
  static const String accountBookRevisionKey = "account_book_revision";
  static const String fetchedAtKey = "account_book_fetched_at";

  static const String currentAccountBookKey = "current";

  late Box<AccountBook> _accountBookBox;
  late Box<int> _revisionBox;
  late Box<DateTime> _fetchedAtBox;
  late Box<List<int>> _membersBox;

  Future<void> initialize() async {
    Hive.registerAdapter<AccountBook>(AccountBookAdapter());
    Hive.registerAdapter<Category>(CategoryAdapter());
    Hive.registerAdapter<SubCategory>(SubCategoryAdapter());
    Hive.registerAdapter<AccountBookPay>(AccountBookPayAdapter());

    _accountBookBox = await Hive.openBox<AccountBook>(accountBookKey);
    _membersBox = await Hive.openBox<List<int>>(memberKey);
    _revisionBox = await Hive.openBox<int>(accountBookRevisionKey);
    _fetchedAtBox = await Hive.openBox<DateTime>(fetchedAtKey);
  }

  AccountBook? currentAccountBook() {
    return _accountBookBox.get(currentAccountBookKey);
  }

  Future<void> saveCurrentAccountBook(AccountBook accountBook) async {
    await _accountBookBox.put(currentAccountBookKey, accountBook);
  }

  AccountBook? findAccountBook(int accountBookId) {
    return _accountBookBox.get(accountBookId);
  }

  Future<void> saveAccountBook(int accountBookId, AccountBook accountBook) async {
    await _accountBookBox.put(accountBookId, accountBook);
  }

  int? findRevision(int accountBookId) {
    return _revisionBox.get(accountBookId);
  }

  DateTime? findFetchedAt(int accountBookId) {
    return _fetchedAtBox.get(accountBookId);
  }

  Future<void> saveRevision(int accountBookId, int revision) async {
    await _revisionBox.put(accountBookId, revision);
  }

  Future<void> saveFetchedAt(int accountBookId, DateTime fetchedAt) async {
    await _fetchedAtBox.put(accountBookId, fetchedAt);
  }

  Future<void> saveMemberIds(int accountBookId, List<int> members) async {
    await _membersBox.put(accountBookId, members);
  }

  List<int> findMemberIds(int accountBookId) {
    return _membersBox.get(accountBookId) ?? List.empty();
  }
}
