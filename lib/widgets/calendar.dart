import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatelessWidget {
  final DateTime kFirstDay;
  final DateTime kLastDay;
  final DateTime focusedDay;
  // final DateTime selectedDay;
  // final DateTime rangeStart;
  // final DateTime rangeEnd;
  // Function onDaySelected;
  // Function onRangeSelected;
  
  Calendar({
    super.key, 
    required this.kFirstDay, 
    required this.kLastDay, 
    required this.focusedDay, 
    // required this.selectedDay, 
    // required this.rangeStart, 
    // required this.rangeEnd,
    // required this.onDaySelected, 
    // required this.onRangeSelected
  });

  @override
  Widget build(BuildContext context) {

    CalendarFormat calendarFormat = CalendarFormat.week;
    return TableCalendar(
      firstDay: kFirstDay,
      lastDay: kLastDay,
      focusedDay: focusedDay,
      // selectedDayPredicate: (day) => isSameDay(selectedDay, day),
      // rangeStartDay: rangeStart,
      // rangeEndDay: rangeEnd,
      calendarFormat: calendarFormat,
      startingDayOfWeek: StartingDayOfWeek.monday,
      calendarStyle: const CalendarStyle(outsideDaysVisible: false),
      // onDaySelected: onDaySelected(),
      // onRangeSelected: onRangeSelected(),
    );
  }
}