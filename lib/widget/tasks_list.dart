import 'package:flutter/material.dart';
import 'package:todo_app/models/task_data.dart';
import 'package:todo_app/widget/list_tile_widget.dart';
import 'package:provider/provider.dart';


class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Consumer<TaskData>(
      builder: (context,taskData,child){
        return ListView.builder(
          itemCount:taskData.Tasks.length,
          itemBuilder: ( context,  index) {
            return ListTileWidget(
                isChecked:taskData.Tasks[index].isDone,
                TaskTitle:taskData.Tasks[index].name,
                checkboxChange:( newValue) {
                  taskData.updateTask(taskData.Tasks[index]);
                }
                ,listTileDelete: (){
              taskData.deleteTask(taskData.Tasks[index]);

            },);
          },
        );

      },

    );
  }
}
