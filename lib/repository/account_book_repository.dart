import 'dart:async';

import 'package:hamoney/db/account_book_hive.dart';
import 'package:hamoney/model/account_book.dart';
import 'package:hamoney/client/account_book_client.dart';
import 'package:logger/logger.dart';

class AccountBookRepository {
  final AccountBookClient _accountBookClient;
  final AccountBookHive _accountBookHive;

  AccountBookRepository({
    required AccountBookClient accountBookClient,
    required AccountBookHive accountBookHive,
  })  : _accountBookClient = accountBookClient,
        _accountBookHive = accountBookHive;

  final Logger logger = Logger();

  late AccountBook accountBook;

  int? findCurrentAccountBook() {
    return _accountBookHive.currentAccountBookId();
  }

  AccountBook loadCurrentAccountBook() {
    final accountBookId = findCurrentAccountBook()!;

    accountBook = findAccountBook(accountBookId)!;
    return accountBook;
  }

  Future<void> saveCurrentAccountBookId(int accountBookId) async {
    return await _accountBookHive.saveCurrentAccountBookId(accountBookId);
  }

  Future<AccountBook> fetchAccountBook(int accountBookId) async {
    final response = await _accountBookClient.getAccountBook(accountBookId);
    return response.data.accountBook;
  }

  AccountBook? findAccountBook(int accountBookId) {
    return _accountBookHive.findAccountBook(accountBookId);
  }

  Future<void> saveAccountBook(AccountBook accountBook) async {
    _accountBookHive.saveAccountBook(accountBook.id, accountBook);
  }

  Future<void> saveRevision(int accountBookId, int revision) async {
    await _accountBookHive.saveRevision(accountBookId, revision);
  }

  int findRevision(int accountBookId) {
    return _accountBookHive.findRevision(accountBookId) ?? 0;
  }

  Future<void> saveFetchedAt(int accountBookId, DateTime fetchedAt) async {
    await _accountBookHive.saveFetchedAt(accountBookId, DateTime.now());
  }

  DateTime findFetchedAt(int accountBookId) {
    return _accountBookHive.findFetchedAt(accountBookId)!;
  }
}
