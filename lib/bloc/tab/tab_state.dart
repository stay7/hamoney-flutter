part of 'tab_bloc.dart';

@immutable
abstract class TabState {}

class TabInitial extends TabState {}

class TabSelected extends TabState {
  final int index;

  TabSelected({required this.index});
}

class TabLoaded extends TabState {
  TabLoaded();
}
