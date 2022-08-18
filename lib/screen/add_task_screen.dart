import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  String? newTaskList;
   final Function addTasksCallBack;

   AddTaskScreen( this.addTasksCallBack);

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add Task',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.brown),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.brown)
          ,onChanged: (newText)
          {
            newTaskList=newText;

          },),
          SizedBox(
            height: 20,
          ),
          TextButton(
              onPressed: (){
                Provider.of<TaskData>(context,listen: false).AddTask(newTaskList!);
                Navigator.pop(context);
              },
              child: Text('Add'),
              style: TextButton.styleFrom(
                backgroundColor: Colors.orange[300],
                primary: Colors.brown,
              ))
        ],
      ),
    );
  }
}
