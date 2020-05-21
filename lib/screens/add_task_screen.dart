import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String typedTask;
    return Container(
      color: Color(0xFF757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(25.0),
            topLeft: Radius.circular(25.0),
          ),
        ),
        child: Padding(
          padding:
              EdgeInsets.only(top: 35.0, left: 45.0, right: 45.0, bottom: 45.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.lightBlueAccent,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              TextField(
                textAlign: TextAlign.center,
                autofocus: true,
                onChanged: (value) {
                  print(value);
                  typedTask = value;
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              FlatButton(
                color: Colors.lightBlueAccent,
                child: Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                  ),
                ),
                onPressed: () {
                  Provider.of<TaskData>(context,listen:false).updateTask(typedTask);
                  Navigator.pop(context);
                  },
              )
            ],
          ),
        ),
      ),
    );
  }
}
