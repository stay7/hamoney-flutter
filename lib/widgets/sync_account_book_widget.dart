import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamoney/bloc/setting/setting_bloc.dart';
import 'package:intl/intl.dart';

class SyncAccountBookLabel extends StatefulWidget {
  const SyncAccountBookLabel({Key? key}) : super(key: key);

  @override
  State<SyncAccountBookLabel> createState() => _SyncAccountBookLabelState();
}

class _SyncAccountBookLabelState extends State<SyncAccountBookLabel> {
  @override
  Widget build(BuildContext context) {
    DateTime lastSyncedAt = context.read<SettingBloc>().syncedAt;

    return BlocListener(
      listener: (context, state) {
        if (state is SyncDone) {
          lastSyncedAt = state.syncedAt;
        }
      },
      child: Container(
        child: Row(
          children: [
            Text('마지막 동기화 ${DateFormat('yyyy.MM.dd. hh:mm:ss').format(lastSyncedAt)}'),
            ElevatedButton(
                onPressed: () {
                  context.read<SettingBloc>().add(SyncClicked());
                },
                child: Text('동기화하기'))
          ],
        ),
      ),
    );
  }
}
