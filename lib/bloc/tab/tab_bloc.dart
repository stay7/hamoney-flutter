import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'tab_event.dart';

part 'tab_state.dart';

class TabBloc extends Bloc<TabEvent, TabState> {
  TabBloc() : super(TabSelected(index: 0)) {
    on<TabClicked>(_onTabClicked);
  }

  void _onTabClicked(TabClicked event, Emitter<TabState> emit) {
    emit(TabSelected(index: event.index));
  }
}
