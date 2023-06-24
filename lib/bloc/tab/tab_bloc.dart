import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:hamoney/workflow/loadForReinstalled.dart';
import 'package:meta/meta.dart';

import '../../workflow/update_status.dart';

part 'tab_event.dart';

part 'tab_state.dart';

class TabBloc extends Bloc<TabEvent, TabState> {
  final UpdateStatus _updateStatus;

  TabBloc({
    required UpdateStatus updateStatus,
  })  : _updateStatus = updateStatus,
        super(TabInitial()) {
    on<TabClicked>(_onTabClicked);
    on<TabLoading>(_onTabLoading);
  }

  late Timer _timer;

  void endSyncAccountBook() {
    _timer.cancel();
  }

  void _onTabLoading(TabLoading event, Emitter<TabState> emit) async {
    await _updateStatus.fetch();
    _timer = Timer.periodic(const Duration(minutes: 5), (_) {
      _updateStatus.fetch();
    });

    emit(TabSelected(index: 0));
  }

  void _onTabClicked(TabClicked event, Emitter<TabState> emit) {
    emit(TabSelected(index: event.index));
  }
}
