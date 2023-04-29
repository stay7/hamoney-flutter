import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/setting/setting_bloc.dart';
import '../../widgets/hamoney_navigation_bar.dart';

class SettingTab extends StatelessWidget {
  const SettingTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<SettingBloc, SettingState>(
      listener: (context, state) {},
      child: Scaffold(
        body: Center(
          child: Text('Setting'),
        ),
        bottomNavigationBar: HamoneyNavigationBar(),
      ),
    );
  }
}
