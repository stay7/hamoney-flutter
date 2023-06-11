import 'package:get_it/get_it.dart';
import 'package:hamoney/db/account_book_box.dart';
import 'package:hamoney/db/member_box.dart';
import 'package:hamoney/repository/account_book_repository.dart';
import 'package:hamoney/repository/auth_repository.dart';
import 'package:hamoney/repository/client/account_book_client.dart';
import 'package:hamoney/repository/client/auth_client.dart';
import 'package:hamoney/repository/client/status_client.dart';
import 'package:hamoney/repository/spending_repository.dart';
import 'package:hamoney/repository/ui_repository.dart';
import 'package:hamoney/repository/user_repository.dart';
import 'package:hamoney/secure_storage.dart';
import 'package:hamoney/workflow/find_account_book_member.dart';
import 'package:hamoney/workflow/manage_auth_token.dart';
import 'package:hamoney/workflow/select_account_book_member.dart';
import 'package:hamoney/workflow/update_status.dart';

import 'db/user_hive.dart';
import 'dio/dioUtil.dart';

class DI {
  DI({required this.getIt});

  final GetIt getIt;

  Future<void> initialize() async {
    final accountBookHive = AccountBookHive();
    await accountBookHive.initialize();
    final memberHive = MemberHive();
    await memberHive.initialize();
    final userHive = UserHive();
    await userHive.initialize();

    getIt.registerSingleton<AuthClient>(AuthClient(DioUtil().pureDio));
    getIt.registerSingleton<AccountBookClient>(AccountBookClient(DioUtil().authorizedDio));
    getIt.registerSingleton<StatusClient>(StatusClient(DioUtil().authorizedDio));

    getIt.registerSingleton<SecureStorage>(SecureStorage());

    getIt.registerSingleton<AccountBookHive>(accountBookHive);
    getIt.registerSingleton<MemberHive>(memberHive);
    getIt.registerSingleton<UserHive>(userHive);

    // repository
    getIt.registerSingleton(AccountBookRepository(
      accountBookClient: getIt.get(),
      accountBookHive: getIt.get(),
      memberHive: getIt.get(),
    ));
    getIt.registerSingleton<AuthRepository>(AuthRepository(authClient: getIt.get()));
    getIt.registerSingleton<UserRepository>(UserRepository(userHive: getIt.get()));
    getIt.registerSingleton<UIRepository>(UIRepository());
    getIt.registerSingleton<SpendingRepository>(SpendingRepository());

    // workflow
    getIt.registerSingleton<UpdateStatus>(
      UpdateStatus(
        statusClient: getIt.get(),
        userRepository: getIt.get(),
        accountBookRepository: getIt.get(),
        accountBookHive: getIt.get(),
        memberHive: getIt.get(),
        userHive: getIt.get(),
      ),
    );
    getIt.registerSingleton<ManageAuthToken>(
      ManageAuthToken(secureStorage: getIt.get()),
    );
    getIt.registerSingleton<FindAccountBookMember>(
      FindAccountBookMember(
        accountBookHive: getIt.get(),
        memberHive: getIt.get(),
      ),
    );
    getIt.registerSingleton<SelectAccountBookMember>(SelectAccountBookMember(
      accountBookRepository: getIt.get(),
      findAccountBookMember: getIt.get(),
      accountBookHive: getIt.get(),
    ));
  }
}
