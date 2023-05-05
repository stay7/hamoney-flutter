import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamoney/bloc/tab/tab_bloc.dart';
import 'package:hamoney/screen/add_spending_amount_screen.dart';

import '../resource/resource.dart';

class HamoneyNavigationBar extends StatelessWidget {
  const HamoneyNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bottomPadding = MediaQuery.of(context).viewPadding.bottom;

    return Container(
      padding: EdgeInsets.only(bottom: bottomPadding),
      height: bottomPadding > 0 ? bottomPadding + 56 : 56,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          _BottomTab(
            currentIndex: 0,
            name: '달력',
            offIcon: AppImage.tabIconCalendarOff,
            onIcon: AppImage.tabIconCalendarOn,
          ),
          _BottomTab(
            currentIndex: 1,
            name: '예산',
            offIcon: AppImage.tabIconPlanOff,
            onIcon: AppImage.tabIconPlanOn,
          ),
          _BottomButton(
            name: '추가',
            offIcon: AppImage.tabIconPlusOff,
            onIcon: AppImage.tabIconPlusOn,
          ),
          _BottomTab(
            currentIndex: 2,
            name: '모으기',
            offIcon: AppImage.tabIconSavingOff,
            onIcon: AppImage.tabIconSavingOn,
          ),
          _BottomTab(
            currentIndex: 3,
            name: '관리',
            offIcon: AppImage.tabIconSettingOff,
            onIcon: AppImage.tabIconSettingOn,
          ),
        ],
      ),
    );
  }
}

class _BottomButton extends StatefulWidget {
  const _BottomButton({
    Key? key,
    required this.offIcon,
    required this.onIcon,
    required this.name,
  }) : super(key: key);

  final String onIcon;
  final String offIcon;
  final String name;

  @override
  State<_BottomButton> createState() => _BottomButtonState();
}

class _BottomButtonState extends State<_BottomButton> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () {
          setState(() {
            selected = true;
          });
          Navigator.of(context).pushNamed(AddSpendingAmountScreen.routeName).then((value) {
            setState(() {
              selected = false;
            });
          });
        },
        child: Column(
          children: [
            Image.asset(selected ? widget.onIcon : widget.offIcon),
            Text(widget.name),
          ],
        ),
      ),
    );
  }
}

class _BottomTab extends StatelessWidget {
  const _BottomTab({
    Key? key,
    required this.currentIndex,
    required this.offIcon,
    required this.onIcon,
    required this.name,
  }) : super(key: key);

  final String onIcon;
  final String offIcon;
  final int currentIndex;
  final String name;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TabBloc, TabState>(
      builder: (context, state) {
        if (state is TabSelected) {
          return Container(
            child: InkWell(
                onTap: () => context.read<TabBloc>().add(TabClicked(index: currentIndex)),
                child: Column(
                  children: [
                    Image.asset(currentIndex == state.index ? onIcon : offIcon),
                    Text(name),
                  ],
                )),
          );
        }
        return SizedBox.shrink();
      },
    );
  }
}
