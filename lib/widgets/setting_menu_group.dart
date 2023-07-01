import 'package:flutter/material.dart';

class SettingMenuGroup extends StatelessWidget {
  final List<MenuForm> menuList;

  const SettingMenuGroup({super.key, required this.menuList});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Color(0xffeaeaea)), borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: menuList.map((e) => _Menu(menuForm: e)).toList(),
      ),
    );
  }
}

class _Menu extends StatelessWidget {
  final MenuForm menuForm;

  const _Menu({super.key, required this.menuForm});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        Navigator.of(context).pushNamed(menuForm.screenName);
      },
      child: Container(
        width: 343,
        height: 56,
        padding: EdgeInsets.only(left: 16, right: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(menuForm.name, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color(0xff191919))),
            Icon(Icons.keyboard_arrow_right)
          ],
        ),
      ),
    );
  }
}

class MenuForm {
  final String name;
  final String screenName;

  MenuForm({required this.name, required this.screenName});
}
