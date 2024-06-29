import 'package:flutter/material.dart';

class CustomizedDrawer extends StatelessWidget {
  const CustomizedDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 30,
                ),
                child: Image.asset('assets/images/logo_blogify.jpg'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Divider(
                  color: Color.fromRGBO(45, 149, 150, 1),
                  thickness: 1,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: ListTile(
                  leading: Icon(
                    Icons.home,
                    color: Color.fromRGBO(38, 80, 115, 1),
                    size: 30,
                  ),
                  title: Text(
                    'Home',
                    style: TextStyle(
                      color: Color.fromRGBO(38, 80, 115, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: ListTile(
                  leading: Icon(
                    Icons.bookmark,
                    color: Color.fromRGBO(38, 80, 115, 1),
                    size: 30,
                  ),
                  title: Text(
                    'Bookmark',
                    style: TextStyle(
                      color: Color.fromRGBO(38, 80, 115, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: ListTile(
                  leading: Icon(
                    Icons.account_circle,
                    color: Color.fromRGBO(38, 80, 115, 1),
                    size: 30,
                  ),
                  title: Text(
                    'Profile',
                    style: TextStyle(
                      color: Color.fromRGBO(38, 80, 115, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Divider(
                  color: Color.fromRGBO(45, 149, 150, 1),
                  thickness: 1,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: ListTile(
                  leading: Icon(
                    Icons.info_outline,
                    color: Color.fromRGBO(38, 80, 115, 1),
                    size: 30,
                  ),
                  title: Text(
                    'About',
                    style: TextStyle(
                      color: Color.fromRGBO(38, 80, 115, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: Color.fromRGBO(38, 80, 115, 1),
                    size: 30,
                  ),
                  title: Text(
                    'Log out',
                    style: TextStyle(
                      color: Color.fromRGBO(38, 80, 115, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: double.infinity,
            color: Color.fromRGBO(38, 80, 115, 1),
            child: Text(
              'Demo App By Nguyen Cong Minh',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(241, 250, 218, 1),
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
