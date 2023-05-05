part of 'date_bloc.dart';

@immutable
abstract class DateState {}

class SelectedDate extends DateState {
  SelectedDate({required this.date, required this.isToday});

  final DateTime date;
  final bool isToday;
}
