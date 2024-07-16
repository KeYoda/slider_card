import 'package:flutter/material.dart';
import 'package:new_eng_app/screens/start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 255, 204, 92),
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}
