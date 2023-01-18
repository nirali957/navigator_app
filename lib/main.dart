import 'package:flutter/material.dart';
import 'package:navigator_app/first_screen.dart';
import 'package:navigator_app/second_screen.dart';
import 'package:navigator_app/third_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const FirstScreen(),
      routes: {
        "FirstScreen": (context) => const FirstScreen(),
        "SecondScreen": (context) => const SecondScreen(),
        "ThirdScreen": (context) => const ThirdScreen(),
      },
      initialRoute: "FirstScreen",
    );
  }
}
