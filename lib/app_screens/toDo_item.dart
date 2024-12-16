import 'package:flutter/material.dart';
import '/app_screens/toDo.dart';

class ToDoItem extends StatelessWidget {
  final ToDo todo;
  final onToDoChanged;
  final onDeleteItem;

  const ToDoItem(
      {super.key,
      required this.todo,
      required this.onToDoChanged,
      required this.onDeleteItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20.0),
      child: ListTile(
        onTap: () {
          // print("Clicked on to do list item");
          onToDoChanged(todo);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.white,
        leading: Icon(
          todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: Colors.purple,
        ),
        title: Text(
          todo.todoText!,
          style: TextStyle(
              fontSize: 16.0,
              color: Colors.purple,
              decoration: todo.isDone ? TextDecoration.lineThrough : null),
        ),
        trailing: Container(
          padding: const EdgeInsets.all(0),
          margin: const EdgeInsets.symmetric(vertical: 8),
          width: 40,
          height: 35,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(5.0)),
          child: IconButton(
            color: Colors.white,
            iconSize: 16.0,
            icon: const Icon(Icons.delete),
            onPressed: () {
              // print("clicked delete button");
              onDeleteItem(todo.id);
            },
          ),
        ),
      ),
    );
  }
}
