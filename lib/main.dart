import 'package:flutter/material.dart';
import 'package:ptolemey/screens/detail_screen.dart';
import 'package:ptolemey/screens/home_screen.dart';
import 'package:ptolemey/screens/menu_screen.dart';





void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test task',
      theme: ThemeData(
      fontFamily: 'Raleway',
      ),
      initialRoute: "/",
      routes: {
        "/":(context) => const MenuPage(),
        "/home":(context) => const HomeScreen(),
        "/details_screen":(context) => const DetailScreen(),
      
      },
      //home: const DetailScreen(),
    );
  }
}

