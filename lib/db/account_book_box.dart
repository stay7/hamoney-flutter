import 'dart:async';

import 'package:hamoney/model/account_book_pay.dart';
import 'package:hamoney/model/category.dart';
import 'package:hamoney/model/sub_category.dart';
import 'package:hive/hive.dart';

import '../model/account_book.dart';

class AccountBookBox {
  static const String accountBookKey = "account_book";

  AccountBookBox();

  late Box<AccountBook> box;

  Future<void> initialize() async {
    box = await Hive.openBox<AccountBook>(accountBookKey);
    Hive.registerAdapter(AccountBookAdapter());
    Hive.registerAdapter(CategoryAdapter());
    Hive.registerAdapter(SubCategoryAdapter());
    Hive.registerAdapter(AccountBookPayAdapter());
  }

  FutureOr<void> save(int accountBookId, AccountBook accountBook) {
    box.put(accountBookId, accountBook);
  }

  FutureOr<AccountBook?> load(int accountBookId) async {
    return box.get(accountBookId);
  }
}
