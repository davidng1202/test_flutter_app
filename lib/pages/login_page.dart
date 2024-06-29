// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        // leading: IconButton(
        //     onPressed: (){
        //       Navigator.pop(context);
        //     },
        //     icon: Icon(
        //       Icons.arrow_back,
        //       size: 25,
        //       color: Color.fromRGBO(241, 250, 218, 1),
        //     )
        // ),
        title: Text(
          "Log in",
          style: TextStyle(
            color: Color.fromRGBO(241, 250, 218, 1),
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(38, 80, 115, 1),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo_blogify.jpg',
                height: 200,
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(45, 149, 150, 1),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(38, 80, 115, 1),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    hintText: "Username...",
                    hintStyle: TextStyle(
                      color: Colors.black54,
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                    ),
                    prefixIcon: Icon(
                      Icons.account_circle_outlined,
                      color: Color.fromRGBO(45, 149, 150, 1),
                      size: 40,
                    )),
                style: TextStyle(
                  decoration: TextDecoration.none,
                  decorationThickness: 0,
                  color: Color.fromRGBO(45, 149, 150, 1),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(45, 149, 150, 1),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(38, 80, 115, 1),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: "Password...",
                  hintStyle: TextStyle(
                    color: Colors.black54,
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                  ),
                  prefixIcon: Icon(
                    Icons.lock_outline,
                    color: Color.fromRGBO(45, 149, 150, 1),
                    size: 40,
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.visibility,
                      color: Color.fromRGBO(45, 149, 150, 1),
                      size: 30,
                    ),
                    onPressed: () {},
                  ),
                ),
                style: TextStyle(
                  decoration: TextDecoration.none,
                  decorationThickness: 0,
                  color: Color.fromRGBO(45, 149, 150, 1),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Forgot password?',
                  style: TextStyle(
                    color: Color.fromRGBO(45, 149, 150, 1),
                    fontSize: 18,
                    decoration: TextDecoration.underline,
                    decorationColor: Color.fromRGBO(45, 149, 150, 1),
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/firstpage');
                },
                child: Ink(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(38, 80, 115, 1),
                        Color.fromRGBO(45, 149, 150, 1)
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Container(
                    constraints: BoxConstraints(maxWidth: 250, maxHeight: 70),
                    alignment: Alignment.center,
                    child: Text(
                      'Log in',
                      style: TextStyle(
                        color: Color.fromRGBO(241, 250, 218, 1),
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                    text: "Dont't have an account? ",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 20,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Sign up',
                        style: TextStyle(
                          color: Color.fromRGBO(45, 149, 150, 1),
                          fontSize: 20,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
