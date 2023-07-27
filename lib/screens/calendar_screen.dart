import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';


class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  Map<DateTime, List<String>> _events = {
    DateTime(2023, 1, 1): ['Happy New Year'],
    DateTime(2023, 2, 14): ['Valentine\'s Day'],
    DateTime(2023, 3, 8): ['International Women\'s Day'],
    DateTime(2023, 4, 22): ['Earth Day'],
    DateTime(2023, 5, 1): ['International Workers\' Day'],
    DateTime(2023, 7, 4): ['Independence Day'],
    DateTime(2023, 10, 31): ['Halloween'],
    // Diwali varies based on the Hindu lunar calendar, so you may need to calculate it dynamically
    // For this example, let's set it to October 28, 2023
    DateTime(2023, 10, 28): ['Diwali'],
    DateTime(2023, 12, 25): ['Christmas Day'],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TableCalendar(
              calendarFormat: _calendarFormat,
              focusedDay: _focusedDay,
              firstDay: DateTime(2020),
              lastDay: DateTime(2030),
              eventLoader: (day) {
                // Return events for the specified date, or an empty list if no events exist
                return _events[day] ?? [];
              },
              onFormatChanged: (format) {
                setState(() {
                  _calendarFormat = format;
                });
              },
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay;
                });
              },

            ),
            // Display events for the selected date
            if (_events.containsKey(_selectedDay))
              ..._events[_selectedDay]!.map((event) => ListTile(title: Text(event))),
          ],
        ),
      ),
    );
  }
}
