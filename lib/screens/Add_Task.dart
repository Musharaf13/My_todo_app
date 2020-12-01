import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/Models/data.dart';

class AddTask extends StatelessWidget {

  String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Text(
                  'Task',
                  style: TextStyle(
                    fontSize: 20,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                width: 300,
                child: TextField(
                  autofocus: true,
                  textAlign: TextAlign.center,
                  onChanged: (newText) {
                    name = newText;
                  },
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Provider.of<Data>(context, listen: false).addTask(name);
                  Navigator.pop(context);
                },
                child: Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.lightBlue,
              )
            ],
          ),
        ),
      ),
    );
  }
}
