import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:table_calendar/table_calendar.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeCalendarFormat(format: CalendarFormat.week)) {
    on<AppBarDateClicked>(_onAppBarDateClicked);
  }

  void _onAppBarDateClicked(AppBarDateClicked event, Emitter<HomeState> emit) {
    final CalendarFormat tobe = event.currentFormat == CalendarFormat.week ? CalendarFormat.month : CalendarFormat.week;
    emit(HomeCalendarFormat(format: tobe));
  }
}
