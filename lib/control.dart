// ignore_for_file: library_private_types_in_public_api

import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:money_manager/scr/setting.dart';
import 'package:money_manager/scr/year.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  List<Widget> tabItems = [
    yearManage(),
    setting(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: tabItems[_selectedIndex],
        ),
        bottomNavigationBar: FlashyTabBar(
          selectedIndex: _selectedIndex,
          showElevation: true,
          onItemSelected: (index) => setState(() {
            _selectedIndex = index;
          }),
          items: [
            FlashyTabBarItem(
              icon: const Icon(Icons.event),
              title: const Text('Manage'),
            ),
            FlashyTabBarItem(
              icon: const Icon(Icons.settings),
              title: const Text('Setting'),
            ),
          ],
        ),
      ),
    );
  }
}
