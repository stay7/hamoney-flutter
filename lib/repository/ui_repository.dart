import 'package:hamoney/model/account_book.dart';
import 'package:table_calendar/table_calendar.dart';

class UIRepository {
  DateTime _selectedDate = DateTime.now();
  bool _isToday = true;
  CalendarFormat _calendarFormat = CalendarFormat.week;
  AccountBook? selectedAccountBook;

  selectDate(DateTime date) {
    _selectedDate = date;
    _isToday = isSameDay(date, DateTime.now());
  }

  bool get isToday => _isToday;

  DateTime get selectedDate => _selectedDate;

  CalendarFormat get calendarFormat => _calendarFormat;

  set calendarFormat(CalendarFormat value) {
    _calendarFormat = value;
  }
}
