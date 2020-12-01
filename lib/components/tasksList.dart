import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/Models/data.dart';
import 'package:todo/components/TaskTile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Data>(
      builder: (context, data, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = data.tasksList[index];
            return Dismissible(
              key: Key(task.name),
              onDismissed: (direction) {
                data.removeTask(task);
              },
              background: Container(
                color: Colors.green,
              ),
              child: TaskTile(
                name: task.name,
                isChecked: task.isCheck,
                changeState: (changeState) {
                  data.updateTask(task);
                },
              ),
            );
          },
          itemCount: data.tasksList.length,
        );
      },
    );
  }
}
