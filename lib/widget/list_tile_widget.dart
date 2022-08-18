import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  final bool isChecked;
  final String TaskTitle;
  final void Function(bool?) checkboxChange;
  final void Function() listTileDelete;


  // ignore: non_constant_identifier_names
  const ListTileWidget(
      {required this.isChecked,
      required this.TaskTitle,
      required this.checkboxChange,
        required this.listTileDelete});
  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          TaskTitle,
          style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null,
            color: Colors.brown,
          ),
        ),
        trailing: Checkbox(
        activeColor: Colors.teal[400],
        value: isChecked,
        onChanged: checkboxChange,
    ),
    onLongPress: listTileDelete,);
  }
}
