import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamoney/widgets/calendar_today.dart';
import 'package:hamoney/widgets/hamoney_navigation_bar.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../bloc/home/home_bloc.dart';
import '../../repository/account_book_repository.dart';
import '../../widgets/calendar_selected_day.dart';

class Event {
  final String title;

  Event(this.title);
}

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  Map<DateTime, List<Event>> events = {
    DateTime.now(): [Event('title'), Event('title2')],
    DateTime(2023, 5, 6): [Event('title3')],
  };

  List<Event> _getEventsForDay(DateTime day) {
    // Implementation example
    return events[day] ?? [];
  }

  @override
  void initState() {
    super.initState();
    context.read<HomeBloc>().startSyncAccountBook();
  }

  @override
  void dispose() {
    super.dispose();
    context.read<HomeBloc>().endSyncAccountBook();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state is HomeInitial) {
          context.watch<AccountBookRepository>().getAccountBook();

          return Scaffold(
            appBar: AppBar(
              title: InkWell(
                onTap: () {
                  context.read<HomeBloc>().add(AppBarDateClicked(currentFormat: state.format));
                },
                child: Row(
                  children: [
                    Text(
                      DateFormat('yyyy.MM.dd').format(state.selectedDate),
                      style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      state.format == CalendarFormat.week ? Icons.arrow_drop_down : Icons.arrow_drop_up,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              titleTextStyle: TextStyle(color: Colors.black),
              backgroundColor: Colors.white,
              elevation: 0,
            ),
            body: Column(
              children: [
                TableCalendar(
                  firstDay: DateTime.utc(2010, 10, 16),
                  lastDay: DateTime.utc(2030, 3, 14),
                  focusedDay: state.selectedDate,
                  startingDayOfWeek: StartingDayOfWeek.monday,
                  calendarFormat: state.format,
                  headerVisible: false,
                  locale: 'ko_KR',
                  eventLoader: (day) {
                    return _getEventsForDay(day);
                  },
                  selectedDayPredicate: (day) {
                    return isSameDay(state.selectedDate, day);
                  },
                  onDaySelected: (selectedDay, focusedDay) {
                    context.read<HomeBloc>().add(DateClicked(date: selectedDay));
                  },
                  calendarStyle: const CalendarStyle(
                    markerSize: 10,
                    markerDecoration: BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                  ),
                  calendarBuilders: CalendarBuilders(
                    defaultBuilder: (context, day, focusedDay) {
                      return Center(
                        child: Text(
                          DateFormat('d').format(day),
                          style: TextStyle(color: Color(0xFF6A6A6A)),
                        ),
                      );
                    },
                    dowBuilder: (context, day) {
                      return Center(
                        child: Text(
                          DateFormat.E('ko_KR').format(day),
                          style: const TextStyle(color: Color(0xFF0D0D0D), fontSize: 12),
                        ),
                      );
                    },
                    selectedBuilder: (context, date, _) {
                      return state.isToday ? CalendarToday(date: date) : CalendarSelectedDay(date: date);
                    },
                    todayBuilder: (context, date, _) {
                      return CalendarToday(date: date);
                    },
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: _getEventsForDay(state.selectedDate).length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(_getEventsForDay(state.selectedDate)[index].title),
                      );
                    },
                  ),
                ),
              ],
            ),
            bottomNavigationBar: const HamoneyNavigationBar(),
            floatingActionButton: state.isToday
                ? null
                : FloatingActionButton.extended(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    backgroundColor: Colors.black,
                    onPressed: () {
                      context.read<HomeBloc>().add(DateClicked(date: DateTime.now()));
                    },
                    label: Text('오늘 >', style: TextStyle(color: Colors.white)),
                  ),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          );
        }
        return SizedBox.shrink();
      },
    );
  }
}
