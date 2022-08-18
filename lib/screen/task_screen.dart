// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';
import 'package:todo_app/screen/add_task_screen.dart';
import '../models/task.dart';
import '../widget/tasks_list.dart';

class TaskScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) => SingleChildScrollView(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                    child: AddTaskScreen((newTaskList)
                  {

                   // Provider.of<TaskData>(context).add(Task(name: newTaskList));
                    //    Navigator.pop(context);
                  }

                  )));
        },
        backgroundColor: Colors.brown,
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.orange[300],
      body: Container(
        padding: EdgeInsets.only(top: 60, bottom: 80, right: 20, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.playlist_add_check,
                  size: 40,
                  color: Colors.brown,
                ),
                SizedBox(
                  width: 30,
                ),
                Text('Today To Do List',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown)),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text('${Provider.of<TaskData>(context).Tasks.length}  Tasks for today',
                style: TextStyle(fontSize: 16, color: Colors.brown)),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                height: 400,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: TasksList(),
              ),
            )
          ],
        ),
      ),
    );
  }


}
