// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';

import 'package:hive_todo/utils/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    Key? key,
    required this.onSave,
    required this.controller,
    required this.onCancel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: SizedBox(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add a New Task",
              ),
            ),
            // buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // save
                MyButton(text: "Save", onPress: onSave),
                const SizedBox(
                  width: 8,
                ),
                //cancle
                MyButton(text: "Cancel", onPress: onCancel),
              ],
            )
          ],
        ),
      ),
    );
  }
}
