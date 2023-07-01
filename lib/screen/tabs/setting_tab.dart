import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamoney/screen/spending/add_spending_amount_screen.dart';
import 'package:hamoney/widgets/card_account_book.dart';
import 'package:hamoney/widgets/setting_menu_group.dart';

import '../../bloc/setting/setting_bloc.dart';
import '../../widgets/hamoney_navigation_bar.dart';
import '../../widgets/sync_status_bar.dart';

class SettingTab extends StatefulWidget {
  const SettingTab({Key? key}) : super(key: key);

  @override
  State<SettingTab> createState() => _SettingTabState();
}

class _SettingTabState extends State<SettingTab> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final SettingBloc bloc = context.read<SettingBloc>();

    return BlocListener<SettingBloc, SettingState>(
      listener: (context, state) {},
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: RichText(
            text: TextSpan(
              text: '안녕하세요 ',
              style: TextStyle(color: Color(0xFF2C2D3A), fontSize: 19),
              children: <TextSpan>[
                TextSpan(
                  text: bloc.user().nickname,
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings_outlined, color: Colors.black),
            ),
          ],
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              CardAccountBook(accountBookMember: bloc.currentAccountBookMember()),
              SyncStatusBar(),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(bottom: 12),
                child: Text(
                  "자산관리",
                  style: TextStyle(fontSize: 12, color: Color(0xFF191919)),
                ),
              ),
              SettingMenuGroup(
                menuList: [
                  MenuForm(name: '예산 수정', screenName: AddSpendingAmountScreen.routeName),
                  MenuForm(name: '월 시작일자', screenName: AddSpendingAmountScreen.routeName),
                  MenuForm(name: '카드 설정', screenName: AddSpendingAmountScreen.routeName),
                  MenuForm(name: '카테고리 수정', screenName: AddSpendingAmountScreen.routeName),
                  MenuForm(name: '반복데이터', screenName: AddSpendingAmountScreen.routeName),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: const HamoneyNavigationBar(),
      ),
    );
  }
}
