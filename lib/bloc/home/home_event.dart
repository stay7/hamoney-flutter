part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class AppBarDateClicked extends HomeEvent {
  AppBarDateClicked({required this.currentFormat});

  final CalendarFormat currentFormat;
}

class DateSelected extends HomeEvent {
  DateSelected({required this.selected});

  final DateTime selected;
}

class TodayButtonClicked extends HomeEvent {
  TodayButtonClicked();
}
