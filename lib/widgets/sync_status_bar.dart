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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text.rich(
                TextSpan(
                  text: '마지막 동기화 ',
                  style: TextStyle(color: Color.fromRGBO(0x2c, 0x2d, 0x3d, 0.7), fontSize: 12),
                  children: [
                    TextSpan(
                      text:
                          '${DateFormat('yyyy.MM.dd. hh:mm:ss').format(context.read<SettingBloc>().syncedAt.toLocal())}',
                      style: TextStyle(
                        color: Color.fromRGBO(0x2c, 0x2d, 0x3d, 0.4),
                      ),
                    )
                  ],
                ),
              ),
              OutlinedButton(
                onPressed: () {
                  context.read<SettingBloc>().add(SyncClicked());
                },
                child: Text('동기화하기', style: TextStyle(color: Color(0xff191919), fontSize: 12)),
                style: OutlinedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
              )
            ],
          ),
        );
      },
    );
  }
}
