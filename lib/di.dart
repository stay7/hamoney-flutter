import 'package:get_it/get_it.dart';
import 'package:hamoney/db/account_book_box.dart';
import 'package:hamoney/repository/account_book_repository.dart';
import 'package:hamoney/repository/auth_repository.dart';
import 'package:hamoney/repository/client/account_book_client.dart';
import 'package:hamoney/repository/client/auth_client.dart';
import 'package:hamoney/repository/spending_repository.dart';
import 'package:hamoney/repository/ui_repository.dart';
import 'package:hamoney/repository/user_repository.dart';

import 'dio/dioUtil.dart';

class DI {
  DI({required this.getIt});

  final GetIt getIt;

  void initialize() {
    final authClient = AuthClient(DioUtil().pureDio);
    final accountBookClient = AccountBookClient(DioUtil().authorizedDio);
    final accountBookBox = AccountBookBox();

    getIt.registerSingleton<AuthClient>(authClient);
    getIt.registerSingleton<AccountBookClient>(accountBookClient);
    getIt.registerSingleton<AccountBookBox>(accountBookBox);

    // repository
    getIt.registerSingletonWithDependencies<AccountBookRepository>(
      () => AccountBookRepository(accountBookClient: accountBookClient, accountBookBox: accountBookBox),
      dependsOn: [AccountBookClient, AccountBookBox],
    );
    getIt.registerSingletonWithDependencies<AuthRepository>(
      () => AuthRepository(authClient: authClient),
      dependsOn: [AuthClient],
    );
    getIt.registerSingleton<UserRepository>(UserRepository());
    getIt.registerSingleton<UIRepository>(UIRepository());
    getIt.registerSingleton<SpendingRepository>(SpendingRepository());
  }
}
