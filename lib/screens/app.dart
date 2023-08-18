import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      bottomNavigationBar: BottomNavigationBar(
          selectedLabelStyle: const TextStyle(
            color: Colors.white,
            letterSpacing: 2.0,
          ),
          backgroundColor: Colors.black,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.white), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.search, color: Colors.white), label: 'Search'),
            BottomNavigationBarItem(
                icon:
                    Icon(Icons.library_add_check_outlined, color: Colors.white),
                label: 'Library')
          ]),
    );
  }
}
