part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

class HomeCalendarFormat extends HomeState {
  HomeCalendarFormat({required this.format});

  final CalendarFormat format;
}
