part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {
  HomeInitial();

  final CalendarFormat format = CalendarFormat.week;
  final DateTime current = DateTime.now();
}

class DateChanged extends HomeState {
  DateChanged({required this.toBe, required this.isToday});

  final DateTime toBe;
  final bool isToday;
}

class CalendarFormatChanged extends HomeState {
  CalendarFormatChanged(this.format);

  final CalendarFormat format;
}
