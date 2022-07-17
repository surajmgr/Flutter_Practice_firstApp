import 'package:flutter/material.dart';
import 'package:myfirstapp/pages/home_page.dart';
import 'package:myfirstapp/pages/login_page.dart';

void main() => runApp(const myApp());

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo App',
      home: const loginPage(),
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      routes: {
        "/login": (context) => loginPage(),
        "/home": (context) => HomePage(),
      },
    );
  }
}
