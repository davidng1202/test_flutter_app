import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  BottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(38, 80, 115, 1),
        //borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: GNav(
        onTabChange: (value) => onTabChange!(value),
        iconSize: 30,
        textStyle: TextStyle(
          color: Color.fromRGBO(241, 250, 218, 1),
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        mainAxisAlignment: MainAxisAlignment.center,
        color: Color.fromRGBO(154, 208, 194, 1),
        activeColor: Color.fromRGBO(241, 250, 218, 1),
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.bookmark,
            text: 'Bookmark',
          ),
          GButton(
            icon: Icons.account_circle,
            text: 'Profile',
          )
        ],
      ),
    );
  }
}
