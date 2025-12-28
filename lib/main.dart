import 'package:flutter/material.dart';
import 'package:tutorials/pages/first_page.dart';
import 'package:tutorials/pages/home_page.dart';
import 'package:tutorials/pages/settings_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List<dynamic> newList = ['Iktiar', 'Oishi', 'Prama'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        'settingsPage': (context) => SettingsPage(),
        'homepage': (context) => HomePage(),
      },
    );
  }
}
