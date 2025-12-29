import 'package:flutter/material.dart';
import 'package:tutorials4/widgets/alert_buttons.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  DialogBox({super.key, required this.controller, required this.onSave});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: Container(
        height: 130,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                  hintText: 'Add a text Here',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //Save button
                AlertButtons(
                  title: 'Cancel',
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const SizedBox(width: 5.0),
                //cancel button
                AlertButtons(
                  title: 'Save',
                  onPressed: () {
                    onSave();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
