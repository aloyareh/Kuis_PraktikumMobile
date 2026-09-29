import 'package:flutter/material.dart';

import 'Pages/home.dart';
import 'Pages/profil.dart';

class Root extends StatefulWidget {
  final String username;

  const Root({super.key, required this.username});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [HomePage(), ProfilePage()];

    return Scaffold(
      body: pages[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: "Profil", icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
