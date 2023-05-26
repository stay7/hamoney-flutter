import 'package:hamoney/model/account_book.dart';
import 'package:hamoney/repository/client/account_book_client.dart';
import 'package:logger/logger.dart';

import '../secure_storage.dart';

class AccountBookRepository {
  AccountBookRepository({required AccountBookClient accountBookClient}) : _accountBookClient = accountBookClient;

  final AccountBookClient _accountBookClient;
  late AccountBook accountBook;
  final Logger logger = Logger();

  Future<void> useAlone() async {
    final response = await _accountBookClient.useAlone();
    await SecureStorage().saveLastUsedAccountBookId(response.data.accountBookId);
  }

  Future<void> getAccountBook() async {
    final accountBookId = await SecureStorage().storage.read(key: SecureStorageKey.lastUsedAccountBookId);
    final response = await _accountBookClient.getAccountBook(int.parse(accountBookId!));
    accountBook = response.data;
  }
}
