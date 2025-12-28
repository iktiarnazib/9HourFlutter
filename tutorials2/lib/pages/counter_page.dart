import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

//variable
int incremenet = 0;

//method
int incrementCounter() {
  return incremenet += 1;
}

int decrementCounter() {
  if (incremenet < 1) {
    return incremenet = 0;
  }
  return incremenet -= 1;
}

class _CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    //ui
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Text('$incremenet', style: TextStyle(fontSize: 100)),
            if (incremenet == 0) ...[
              Text(
                "Number shouldn't be negative!",
                style: TextStyle(color: Colors.red, fontSize: 20),
              ),
            ],
            SizedBox(height: 5.0),
            FilledButton(
              onPressed: () {
                setState(() {
                  incrementCounter();
                });
              },
              child: Text('Increment Number'),
            ),
            FilledButton(
              onPressed: () {
                setState(() {
                  decrementCounter();
                });
              },
              child: Text('Decrement Number'),
            ),
          ],
        ),
      ),
    );
  }
}
