import 'package:flutter/material.dart';
import 'package:surtaal/screens/home.dart';
import 'package:surtaal/screens/search.dart';
import 'package:surtaal/screens/yourlib.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Tabs = [Home(), Search(), YourLib()];
  int CurrentTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Tabs[CurrentTabIndex],
      backgroundColor: Colors.black45,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: CurrentTabIndex,
          onTap: (CurrentIndex) {
            CurrentTabIndex = CurrentIndex;
            setState(() {});
          },
          selectedLabelStyle: const TextStyle(
            color: Colors.white,
            letterSpacing: 2.0,
          ),
          selectedItemColor: Colors.white,
          backgroundColor: Colors.black,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.white), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.search, color: Colors.white), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_books, color: Colors.white),
                label: 'Library')
          ]),
    );
  }
}
