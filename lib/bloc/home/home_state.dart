part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {
  HomeInitial({required this.format, required this.selectedDate, required this.isToday});

  final CalendarFormat format;
  final DateTime selectedDate;
  final bool isToday;
}
