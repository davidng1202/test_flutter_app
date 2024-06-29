import 'package:demo_app_1/pages/home_page.dart';
import 'package:demo_app_1/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//Color.fromRGBO(38, 80, 115, 1)
//Color.fromRGBO(45, 149, 150, 1)
//Color.fromRGBO(154, 208, 194, 1)
//Color.fromRGBO(241, 250, 218, 1)

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      routes: {
        '/firstpage': (context) => HomePage(),
        '/secondpage': (context) => LoginPage(),
      },
    );
  }
}
