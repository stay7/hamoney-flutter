import 'package:bloc/bloc.dart';
import 'package:hamoney/repository/ui_repository.dart';
import 'package:meta/meta.dart';
import 'package:table_calendar/table_calendar.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({required this.uiRepository})
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

  final UIRepository uiRepository;

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
