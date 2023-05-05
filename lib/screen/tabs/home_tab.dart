import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamoney/widgets/calendar_today.dart';
import 'package:hamoney/widgets/hamoney_navigation_bar.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../bloc/home/home_bloc.dart';
import '../../widgets/calendar_selected_day.dart';

class Event {
  final String title;

  Event(this.title);
}

class HomeTab extends StatelessWidget {
  Map<DateTime, List<Event>> events = {
    DateTime.now(): [Event('title'), Event('title2')],
    DateTime(2023, 4, 22): [Event('title3')],
  };

  List<Event> _getEventsForDay(DateTime day) {
    // Implementation example
    return events[day] ?? [];
  }

  @override
  Widget build(BuildContext context) {
    DateTime current = DateTime.now();
    CalendarFormat format = CalendarFormat.week;
    bool isToday = true;

    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {
        if (state is DateChanged) {
          current = state.toBe;
          isToday = state.isToday;
        }
        if (state is CalendarFormatChanged) {
          format = state.format;
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: InkWell(
              onTap: () {
                context.read<HomeBloc>().add(AppBarDateClicked(currentFormat: format));
              },
              child: Row(
                children: [
                  Text(
                    DateFormat('yyyy.MM.dd').format(current),
                    style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    format == CalendarFormat.week ? Icons.arrow_drop_down : Icons.arrow_drop_up,
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
                focusedDay: current,
                startingDayOfWeek: StartingDayOfWeek.monday,
                calendarFormat: format,
                headerVisible: false,
                locale: 'ko_KR',
                eventLoader: (day) {
                  return _getEventsForDay(day);
                },
                selectedDayPredicate: (day) {
                  return isSameDay(current, day);
                },
                onDaySelected: (selectedDay, focusedDay) {
                  context.read<HomeBloc>().add(DateSelected(selected: selectedDay));
                },
                calendarStyle: CalendarStyle(
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
                    return isToday ? CalendarToday(date: date) : CalendarSelectedDay(date: date);
                  },
                  todayBuilder: (context, date, _) {
                    return CalendarToday(date: date);
                  },
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: _getEventsForDay(current).length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(_getEventsForDay(current)[index].title),
                    );
                  },
                ),
              ),
            ],
          ),
          bottomNavigationBar: const HamoneyNavigationBar(),
          floatingActionButton: isToday
              ? null
              : FloatingActionButton.extended(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundColor: Colors.black,
                  onPressed: () {
                    context.read<HomeBloc>().add(TodayButtonClicked());
                  },
                  label: Text('오늘 >', style: TextStyle(color: Colors.white)),
                ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        );
      },
    );
  }
}
