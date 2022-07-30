import 'package:flutter/material.dart';
import 'package:myfirstapp/pages/home_page.dart';
import 'package:myfirstapp/pages/login_page.dart';
import 'package:myfirstapp/pages/next_page.dart';
import 'package:myfirstapp/utils/Constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Constants.prefs = await SharedPreferences.getInstance();

  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      title: 'Demo App',
      home: Constants.prefs!.getBool("loggedIn") == true
          ? const HomePage()
          : const loginPage(),
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      routes: {
        "/login": (context) => const loginPage(),
        "/home": (context) => const HomePage(),
        "/next_pg": (context) => const nextPage(),
      },
    );
  }
}
