part of 'tab_bloc.dart';

@immutable
abstract class TabEvent {}

class TabClicked extends TabEvent {
  TabClicked({required this.index});

  final int index;
}
