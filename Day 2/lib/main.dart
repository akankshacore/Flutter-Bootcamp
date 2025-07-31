import 'package:daytwo/buffer.dart';
import 'package:daytwo/medoc.dart';
import 'package:daytwo/third.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home': (context) => const HomePage(),
        'second': (context) => const SecondScreen(),
        'buffer': (context) => const MyBuffer(),
      },
    );
  }
}
