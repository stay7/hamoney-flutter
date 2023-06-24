part of 'setting_bloc.dart';

@immutable
abstract class SettingEvent {}

class SyncClicked extends SettingEvent {

  SyncClicked();
}
