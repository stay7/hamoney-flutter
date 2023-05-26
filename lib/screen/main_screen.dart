import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamoney/bloc/budget/budget_bloc.dart';
import 'package:hamoney/bloc/home/home_bloc.dart';
import 'package:hamoney/bloc/saving/saving_bloc.dart';
import 'package:hamoney/bloc/setting/setting_bloc.dart';
import 'package:hamoney/bloc/tab/tab_bloc.dart';
import 'package:hamoney/repository/account_book_repository.dart';
import 'package:hamoney/repository/ui_repository.dart';
import 'package:hamoney/screen/tabs/budget_tab.dart';
import 'package:hamoney/screen/tabs/home_tab.dart';
import 'package:hamoney/screen/tabs/saving_tab.dart';
import 'package:hamoney/screen/tabs/setting_tab.dart';

class MainScreen extends StatelessWidget {
  static const routeName = 'main';

  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pages = [
      BlocProvider<HomeBloc>(
        create: (context) => HomeBloc(
          uiRepository: context.read<UIRepository>(),
          accountBookRepository: context.read<AccountBookRepository>(),
        ),
        child: HomeTab(),
      ),
      BlocProvider<BudgetBloc>(
        create: (context) => BudgetBloc(),
        child: BudgetTab(),
      ),
      BlocProvider<SavingBloc>(
        create: (context) => SavingBloc(),
        child: SavingTab(),
      ),
      BlocProvider<SettingBloc>(
        create: (context) => SettingBloc(),
        child: SettingTab(),
      ),
    ];

    return BlocBuilder<TabBloc, TabState>(
      builder: (context, state) {
        if (state is TabSelected) {
          return WillPopScope(
            onWillPop: () async {
              return !await Navigator.maybePop(context);
            },
            child: IndexedStack(
              index: state.index,
              children: pages,
            ),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
