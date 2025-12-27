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
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: newList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(newList[index], style: TextStyle(fontSize: 20)),
              );
            },
          ),
        ),
      ),
    );
  }
}
