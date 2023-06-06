import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:hamoney/repository/ui_repository.dart';
import 'package:logger/logger.dart';
import 'package:meta/meta.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../repository/account_book_repository.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({required this.uiRepository, required this.accountBookRepository})
      : super(
          HomeInitial(
            format: uiRepository.calendarFormat,
            selectedDate: uiRepository.selectedDate,
            isToday: uiRepository.isToday,
          ),
        ) {
    on<AppBarDateClicked>(_onAppBarDateClicked);
    on<DateClicked>(_onDateClicked);
  }

  final Logger logger = Logger();
  final UIRepository uiRepository;
  final AccountBookRepository accountBookRepository;
  late Timer _timer;

  void startSyncAccountBook() {
    logger.i('startSyncAccountBook');
    accountBookRepository.getAccountBook();
    accountBookRepository.getMembers();

    _timer = Timer.periodic(const Duration(minutes: 5), (_) {
      accountBookRepository.getAccountBook();
      accountBookRepository.getMembers();
    });
  }

  void endSyncAccountBook() {
    _timer.cancel();
  }

  void _onAppBarDateClicked(AppBarDateClicked event, Emitter<HomeState> emit) {
    uiRepository.calendarFormat =
        event.currentFormat == CalendarFormat.week ? CalendarFormat.month : CalendarFormat.week;
    emit(_initStateFromUiRepository());
  }

  void _onDateClicked(DateClicked event, Emitter<HomeState> emit) {
    uiRepository.selectDate(event.date);
    emit(_initStateFromUiRepository());
  }

  HomeInitial _initStateFromUiRepository() {
    return HomeInitial(
      format: uiRepository.calendarFormat,
      selectedDate: uiRepository.selectedDate,
      isToday: uiRepository.isToday,
    );
  }
}
