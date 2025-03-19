import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:todo_app/calendar.dart';
import 'package:todo_app/focus.dart';
import 'package:todo_app/profile.dart';

import 'home_screen.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _selectedIndex = 0;

  /// The callback that is called when a [BottomNavigationBarItem] is tapped.
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  /// The list of widgets to be displayed from the [bottomNavigationBar].
  final List<Widget> widgetOptions = const [
    MyHomePage(
      title: 'Home',
    ),
    CalendarScreen(),
    FocusScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetOptions.elementAt(_selectedIndex),
      floatingActionButton: SizedBox(
        height: 64,
        child: FloatingActionButton(
          shape: const CircleBorder(),
          elevation: 1,
          onPressed: () {
            debugPrint('FAB clicked');
          },
          child: const Icon(Icons.add),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: SizedBox(
          height: 100,
          child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Iconsax.home), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Iconsax.calendar_1), label: 'Calendar'),
                BottomNavigationBarItem(
                    icon: Icon(Iconsax.clock), label: 'Focus'),
                BottomNavigationBarItem(
                    icon: Icon(Iconsax.user), label: 'Profile')
              ]),
        ),
      ),
    );
  }
}
