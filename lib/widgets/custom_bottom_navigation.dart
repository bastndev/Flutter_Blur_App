import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,

      selectedItemColor: Colors.pink,
      backgroundColor:const Color.fromARGB(255, 30, 32, 49),
      unselectedItemColor: Colors.white,
      items:const [
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_month, size: 35),
          label: 'Calendar',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.g_translate_sharp, size: 35),
          label: 'Graphic',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.supervised_user_circle, size: 35),
          label: 'User',
        ),
      ],
    );
  }
}