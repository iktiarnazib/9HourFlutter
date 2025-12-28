import 'package:flutter/material.dart';
import 'package:tutorials4/widgets/todo_tile.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  //List of todo tasks
  List<List<dynamic>> toDoList = [
    ["Make Tutorials", false],
    ["Study MM", true],
    ["Eating Lunch", false],
  ];

  //onCheckboxChanged
  void onCheckboxChanged(bool? value, int index) {
    setState(() {
      toDoList[index][1] = value ?? true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[100],
      appBar: AppBar(
        title: Text('T O D O A P P'),
        backgroundColor: Colors.amber[300],
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: toDoList.length,
          itemBuilder: (context, index) {
            return TodoTile(
              taskName: toDoList[index][0],
              taskCompleted: toDoList[index][1],
              onChanged: (value) {
                onCheckboxChanged(value, index);
              },
            );
          },
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(20.0),
        child: FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
      ),
    );
  }
}
