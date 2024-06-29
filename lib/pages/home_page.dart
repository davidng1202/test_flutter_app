import 'package:demo_app_1/components/bottom_nav_bar.dart';
import 'package:demo_app_1/components/customized_drawer.dart';
import 'package:demo_app_1/pages/blog_page.dart';
import 'package:demo_app_1/pages/bookmark_page.dart';
import 'package:demo_app_1/pages/profile_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  String title = 'Home';

  void navigate(int index) {
    setState(() {
      selectedIndex = index;
      if (index == 0) title = 'Home';
      if (index == 1) title = 'Bookmark';
      if (index == 2) title = 'Profile';
    });
  }

  final List<Widget> pages = [
    const BlogPage(),
    const BookmarkPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu),
            color: Color.fromRGBO(241, 250, 218, 1),
            onPressed: Scaffold.of(context).openDrawer,
          ),
        ),
        title: Text(
          title,
          style: TextStyle(
            color: Color.fromRGBO(241, 250, 218, 1),
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(38, 80, 115, 1),
      ),
      drawer: CustomizedDrawer(),
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigate(index),
      ),
      body: pages[selectedIndex],
    );
  }
}
