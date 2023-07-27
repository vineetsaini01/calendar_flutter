import 'package:calendar/model/bottom_navigation_item.dart';
import 'package:calendar/screens/calendar_screen.dart';
import 'package:calendar/screens/home_screen.dart';
import 'package:calendar/screens/search_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;
  var isListMode = false;

  final List<BottomNavigationItem> _screens = [
    BottomNavigationItem(
      icon: Icons.home,
      label: 'Upcoming Events',
      content: const HomeScreen(),
    ),
    BottomNavigationItem(
      icon: Icons.calendar_today,
      label: 'Calendar',
      content: const CalendarScreen(),
    ),
    BottomNavigationItem(
      icon: Icons.search,
      label: 'Search',
      content: const SearchScreen(),
    ),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          title: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(_screens[_currentIndex].label),
          ),
        ),
        body: _screens[_currentIndex].content,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: _onTabTapped,
          items: [
            BottomNavigationBarItem(
              icon: Icon(_screens[0].icon),
              label: _screens[0].label,
            ),
            BottomNavigationBarItem(
              icon: Icon(_screens[1].icon),
              label: _screens[1].label,
            ),
            BottomNavigationBarItem(
              icon: Icon(_screens[2].icon),
              label: _screens[2].label,
            ),
          ],
        ),
      ),
    );
  }
}
