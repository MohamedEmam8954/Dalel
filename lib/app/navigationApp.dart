import 'package:flutter/material.dart';

class NavigationApp extends StatelessWidget {
  const NavigationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.abc_sharp),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.abc_sharp),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.abc_sharp),
        ),
      ]),
    );
  }
}
