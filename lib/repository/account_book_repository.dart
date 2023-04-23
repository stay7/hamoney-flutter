import 'package:hamoney/model/account_book.dart';
import 'package:hamoney/repository/client/account_book_client.dart';
import 'package:logger/logger.dart';

class AccountBookRepository {
  AccountBookRepository({required AccountBookClient accountBookClient}) : _accountBookClient = accountBookClient;

  final AccountBookClient _accountBookClient;
  late AccountBook accountBook;
  final Logger logger = Logger();

  Future<void> useAlone() async {
    logger.i('useAlone');
    final response = await _accountBookClient.useAlone();
    logger.i(response);
    accountBook = response.data;
  }
}
