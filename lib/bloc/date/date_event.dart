part of 'date_bloc.dart';

@immutable
abstract class DateEvent {}

class DateClicked extends DateEvent {
  DateClicked({required this.toBe});

  final DateTime toBe;
}
