import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:metrominds/screens/profile.dart';

import '../controller/buttonNav.dart';
import 'home.dart';

class MainActivityPage extends StatefulWidget {
  const MainActivityPage({Key? key});

  @override
  State<MainActivityPage> createState() => _MainActivityPageState();
}

class _MainActivityPageState extends State<MainActivityPage> {
  late bool selectedItem;

  // Initialize _pages here
  List<Widget> _pages = [
    HomePage(),
    HomePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    selectedItem = false; // Initialize it here

    return GetBuilder<BottonController>(
      builder: (items) {
        final int selectedIndex = items.currentIndex.clamp(0, _pages.length - 1);

        // Initialize _items here
        List<BottomNavigationBarItem> _items = [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 24),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book, size: 24),
            label: 'Concours',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ];

        return Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Color(0xFF446D6D), // Set BottomNavigationBar background color
          ),
          child: Scaffold(
            body: _pages[selectedIndex],
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.black,
              items: _items,
              currentIndex: selectedIndex,
              onTap: (value) {
                items.currentIndex = value;

              },
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.grey,
              elevation: 0,
              showSelectedLabels: true,
              showUnselectedLabels: true,
            ),
          ),
        );
      },
    );
  }
}