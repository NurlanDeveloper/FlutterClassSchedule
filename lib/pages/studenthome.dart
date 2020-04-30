import 'package:flutter/material.dart';
import 'package:flutterclasses/pages/classlist.dart';
import 'package:flutterclasses/students.dart';
import 'classinfo.dart';

// Home page - When the app starts, you will be brought here.
// Click on a student to select that student and start assigning
// courses to them.

// ignore: must_be_immutable
class StudentHome extends StatelessWidget {

  ListStudents students = ListStudents();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Student List - Tap to select student"),
        backgroundColor: Colors.green[400],
      ),
      backgroundColor: Colors.white,
      body: ListView.builder(
          itemCount: 4,
          itemBuilder: (BuildContext content, int index) {
          return Card(
                elevation: 20,
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.person,
                    size: 40,
                    color: Colors.black54,
                  ),
                  trailing: Text(students.getId(index)),
                  title: Text(students.getName(index)),
                  subtitle: Text(students.getMajor(index)),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => ClassList()));
                  },
                )
            );
          }),
    );
  }
}