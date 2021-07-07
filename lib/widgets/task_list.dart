import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskList extends StatelessWidget {

    @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context ,taskData , child) {
     return  ListView.builder(
       itemBuilder: (context, index)  {
         final task = taskData.taskList[index] ;
          return TaskItem(
            name: task.name,
            isChecked: task.isDone,
            toggleCheckedState: (newValue) {
              taskData.updateTask(task);
            },
            longPressCallback: (){
              taskData.deleteTask(task) ;

            },

          );
        }, itemCount: taskData.tasksCount,);
      });
  }
}
