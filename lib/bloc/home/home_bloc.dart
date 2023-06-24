import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:hamoney/repository/ui_repository.dart';
import 'package:logger/logger.dart';
import 'package:meta/meta.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../repository/account_book_repository.dart';
import '../../workflow/update_status.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({required this.uiRepository, required this.accountBookRepository, required this.updateStatus})
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

  final UpdateStatus updateStatus;
  final UIRepository uiRepository;
  final AccountBookRepository accountBookRepository;

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
