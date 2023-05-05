part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class AppBarDateClicked extends HomeEvent {
  AppBarDateClicked({required this.currentFormat});

  final CalendarFormat currentFormat;
}
