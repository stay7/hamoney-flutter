import 'dart:async';

import 'package:hamoney/model/account_book_pay.dart';
import 'package:hamoney/model/category.dart';
import 'package:hamoney/model/sub_category.dart';
import 'package:hive/hive.dart';
import 'package:logger/logger.dart';

import '../model/account_book.dart';

class AccountBookHive {
  static const String accountBookKey = "box_account_book";
  static const String currentAccountBookKey = "current";

  static const String prefixAccountBook = "account_book";
  static const String prefixRevision = "revision";
  static const String prefixFetchedAt = "fetched_at";

  Future<void> initialize() async {
    Hive.registerAdapter<AccountBook>(AccountBookAdapter());
    Hive.registerAdapter<Category>(CategoryAdapter());
    Hive.registerAdapter<SubCategory>(SubCategoryAdapter());
    Hive.registerAdapter<AccountBookPay>(AccountBookPayAdapter());

    _accountBookBox = await Hive.openBox(accountBookKey);
  }

  late Box _accountBookBox;

  final Logger logger = Logger();

  int? currentAccountBookId() {
    return _accountBookBox.get(currentAccountBookKey);
  }

  Future<void> saveCurrentAccountBookId(int accountBookId) async {
    await _accountBookBox.put(currentAccountBookKey, accountBookId);
  }

  AccountBook? findAccountBook(int accountBookId) {
    return _accountBookBox.get(_keyAccountBook(accountBookId));
  }

  Future<void> saveAccountBook(int accountBookId, AccountBook accountBook) async {
    await _accountBookBox.put(_keyAccountBook(accountBookId), accountBook);
  }

  int? findRevision(int accountBookId) {
    return _accountBookBox.get(_keyRevision(accountBookId));
  }

  Future<void> saveRevision(int accountBookId, int revision) async {
    await _accountBookBox.put(_keyRevision(accountBookId), revision);
  }

  DateTime? findFetchedAt(int accountBookId) {
    return _accountBookBox.get(_keyFetchedAt(accountBookId));
  }

  Future<void> saveFetchedAt(int accountBookId, DateTime fetchedAt) async {
    await _accountBookBox.put(_keyFetchedAt(accountBookId), fetchedAt);
  }

  String _keyAccountBook(int accountBookId) => "${prefixAccountBook}_$accountBookId";

  String _keyRevision(int accountBookId) => "${prefixRevision}_$accountBookId";

  String _keyFetchedAt(int accountBookId) => "${prefixFetchedAt}_$accountBookId";
}
