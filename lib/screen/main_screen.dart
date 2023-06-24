import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hamoney/bloc/budget/budget_bloc.dart';
import 'package:hamoney/bloc/home/home_bloc.dart';
import 'package:hamoney/bloc/saving/saving_bloc.dart';
import 'package:hamoney/bloc/setting/setting_bloc.dart';
import 'package:hamoney/bloc/tab/tab_bloc.dart';
import 'package:hamoney/screen/tabs/budget_tab.dart';
import 'package:hamoney/screen/tabs/home_tab.dart';
import 'package:hamoney/screen/tabs/saving_tab.dart';
import 'package:hamoney/screen/tabs/setting_tab.dart';

class MainScreen extends StatefulWidget {
  static const routeName = 'main';

  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late TabBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = context.read<TabBloc>();
    bloc.add(TabLoading());
  }

  @override
  void dispose() {
    bloc.endSyncAccountBook();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final getIt = GetIt.instance;

    final pages = [
      BlocProvider<HomeBloc>(
        create: (context) => HomeBloc(
          uiRepository: getIt.get(),
          accountBookRepository: getIt.get(),
          updateStatus: getIt.get(),
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
        create: (context) => SettingBloc(
          accountBookRepository: getIt.get(),
          userRepository: getIt.get(),
          manualSyncAccountBook: getIt.get(),
          memberRepository: getIt.get(),
          loadRequiredData: getIt.get()
        ),
        child: SettingTab(),
      ),
    ];

    return BlocBuilder<TabBloc, TabState>(
      builder: (context, state) {
        if (state is TabLoading) {
          return Text('loading');
        }

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
        return SizedBox.shrink();
      },
    );
  }
}
