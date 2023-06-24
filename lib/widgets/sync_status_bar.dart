import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamoney/bloc/setting/setting_bloc.dart';
import 'package:intl/intl.dart';

class SyncStatusBar extends StatefulWidget {
  const SyncStatusBar({Key? key}) : super(key: key);

  @override
  State<SyncStatusBar> createState() => _SyncStatusBarState();
}

class _SyncStatusBarState extends State<SyncStatusBar> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingBloc, SettingState>(
      builder: (context, state) {
        return Container(
          child: Row(
            children: [
              Text(
                  '마지막 동기화 ${DateFormat('yyyy.MM.dd. hh:mm:ss').format(context.read<SettingBloc>().syncedAt.toLocal())}'),
              ElevatedButton(
                onPressed: () {
                  context.read<SettingBloc>().add(SyncClicked());
                },
                child: Text('동기화하기'),
              )
            ],
          ),
        );
      },
    );
  }
}
