import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:table_calendar/table_calendar.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<DateSelected>(_onDateSelected);
    on<AppBarDateClicked>(_onAppBarDateClicked);
    on<TodayButtonClicked>(_onTodayButtonClicked);
  }

  void _onAppBarDateClicked(AppBarDateClicked event, Emitter<HomeState> emit) {
    final CalendarFormat tobe = event.currentFormat == CalendarFormat.week ? CalendarFormat.month : CalendarFormat.week;
    emit(CalendarFormatChanged(tobe));
  }

  void _onDateSelected(DateSelected event, Emitter<HomeState> emit) {
    emit(DateChanged(
      toBe: event.selected,
      isToday: isSameDay(event.selected, DateTime.now()),
    ));
  }

  void _onTodayButtonClicked(TodayButtonClicked event, Emitter<HomeState> emit) {
    emit(DateChanged(toBe: DateTime.now(), isToday: true));
  }
}
