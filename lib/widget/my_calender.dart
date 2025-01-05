import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

import '../screens/day_detail_screen.dart';

class MyCalender extends StatefulWidget {
  const MyCalender({
    super.key,
  });

  @override
  State<MyCalender> createState() => _MyCalenderState();
}

class _MyCalenderState extends State<MyCalender> {
  DateTime? _selectedDay;
  DateTime _focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      // 오늘 이후 날짜 선택 불가
      enabledDayPredicate: (DateTime date) {
        bool isCanSelect = date.isBefore(DateTime.now());
        return isCanSelect;
      },
      firstDay: DateTime.utc(2010, 10, 16),
      lastDay: DateTime.utc(2030, 3, 14),
      focusedDay: _focusedDay,
      locale: 'ko_KR',
      //달력 스타일
      headerStyle: HeaderStyle(
        titleCentered: true,
        leftChevronVisible: false,
        rightChevronVisible: false,
        titleTextFormatter: (date, locale) =>
            DateFormat.yMMMM(locale).format(date),
        formatButtonVisible: false,
        titleTextStyle: TextStyle(
          color: Colors.black,
        ),
      ),
      daysOfWeekStyle: DaysOfWeekStyle(
        weekdayStyle: TextStyle(
          color: Colors.black,
        ),
        weekendStyle: TextStyle(
          color: Colors.black,
        ),
      ),
      calendarStyle: CalendarStyle(
        disabledTextStyle: TextStyle(
          color: Colors.blueGrey,
        ),
        outsideDaysVisible: false,
        defaultTextStyle: TextStyle(
          color: Colors.black,
        ),
        weekendTextStyle: TextStyle(
          color: Colors.black,
        ),
      ),

      selectedDayPredicate: (day) {
        return isSameDay(_selectedDay, day);
      },
      onDaySelected: (selectedDay, focusedDay) {
        setState(() {
          _selectedDay = selectedDay;
          _focusedDay = focusedDay;
        });

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DayDetailScreen(
              selectedDay: selectedDay,
            ),
          ),
        );
      },
    );
  }
}
