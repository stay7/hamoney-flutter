part of 'setting_bloc.dart';

@immutable
abstract class SettingState {}

class SettingInitial extends SettingState {}

class SyncDone extends SettingState {

  SyncDone({required this.syncedAt});

  DateTime syncedAt;
}
