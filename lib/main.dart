import 'package:flutter/material.dart';
import 'package:miqdadapp/pages/started_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: const Scaffold(
        body: StartedPage(),
      ),
    );
  }
}
