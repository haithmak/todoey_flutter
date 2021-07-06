import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskList extends StatefulWidget {

  final List<Task> taskList ;
  TaskList(this.taskList) ;



  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return TaskItem(
        name: widget.taskList[index].name,
        isChecked: widget.taskList[index].isDone,
        toggleCheckedState: (newValue){
          setState(() {
            widget.taskList[index].toggleDone() ;
          });

        },
      );
    },itemCount: widget.taskList.length,);
  }
}
