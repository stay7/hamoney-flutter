import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:table_calendar/table_calendar.dart';

part 'date_event.dart';

part 'date_state.dart';

class DateBloc extends Bloc<DateEvent, DateState> {
  DateBloc() : super(SelectedDate(date: DateTime.now(), isToday: true)) {
    on<DateClicked>(_onDateClicked);
  }

  void _onDateClicked(DateClicked event, Emitter<DateState> emit) {
    emit(SelectedDate(date: event.toBe, isToday: isSameDay(event.toBe, DateTime.now())));
  }
}
