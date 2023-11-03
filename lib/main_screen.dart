import 'package:first/home__screen.dart';
import 'package:first/menu_screen.dart';
import 'package:first/my_card.dart';

import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int bottomNavIndex = 0;

  static const List<Widget> _pages = [
    HomeScreen(),
    MenuScreen(),
    Icon(
      Icons.camera,
      size: 150,
    ),
    MyCard(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(bottomNavIndex),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        onTap: (value) {
          setState(() {
            bottomNavIndex = value;
          });
        },
        currentIndex: bottomNavIndex,
        selectedItemColor: const Color.fromARGB(255, 238, 99, 70),
        unselectedItemColor: Colors.grey,
        // selectedLabelStyle: TextStyle(color: Color.fromARGB(255, 238, 99, 70)),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.book,
            ),
            label: "Menu",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
            ),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag,
            ),
            label: "card",
          ),
        ],
      ),
    );
  }
}
