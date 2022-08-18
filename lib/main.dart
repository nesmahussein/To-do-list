import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';
import 'screen/task_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return ChangeNotifierProvider(
       create: (context) =>TaskData(),
       child: MaterialApp(
       home: TaskScreen(),
       debugShowCheckedModeBanner: false,

   ),
     );
  }

}
