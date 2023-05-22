import 'package:hamoney/model/account_book.dart';
import 'package:hamoney/repository/client/account_book_client.dart';
import 'package:logger/logger.dart';

class AccountBookRepository {
  AccountBookRepository({required AccountBookClient accountBookClient}) : _accountBookClient = accountBookClient;

  final AccountBookClient _accountBookClient;
  late AccountBook accountBook;
  late int accountBookId;
  final Logger logger = Logger();

  Future<void> useAlone() async {
    final response = await _accountBookClient.useAlone();
    accountBookId = response.data.accountBookId;
  }

  Future<void> getAccountBook() async {
    final response = await _accountBookClient.getAccountBook(accountBookId);
    accountBook = response.data;
  }
}
