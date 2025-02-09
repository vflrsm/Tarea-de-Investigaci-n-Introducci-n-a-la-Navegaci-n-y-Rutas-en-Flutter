import 'package:counter_tarea/second_page.dart';
import 'package:counter_tarea/third_page.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(),
        '/second': (context) => const SecondPage(),
        '/third': (context) => const ThirdPage(),
      },
    );
  }
}
