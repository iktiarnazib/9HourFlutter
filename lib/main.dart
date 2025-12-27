import 'package:flutter/material.dart';

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
      home: Scaffold(
        body: SafeArea(
          child: GridView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 40,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 8,
            ),
            itemBuilder: (context, index) {
              return Container(color: Colors.purple, margin: EdgeInsets.all(4));
            },
          ),
        ),
      ),
    );
  }
}
