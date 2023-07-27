import 'package:flutter/cupertino.dart';

class BottomNavigationItem {
  final IconData icon;
  final String label;
  final Widget content;
  BottomNavigationItem({required this.icon, required this.label, required this.content});
}