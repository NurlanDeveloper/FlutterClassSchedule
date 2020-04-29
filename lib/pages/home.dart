import 'package:flutter/material.dart';
import 'package:flutterclasses/courses.dart';
import 'classinfo.dart';

class HomePage extends StatelessWidget {

  ListCourses course = ListCourses();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Class List"),
        backgroundColor: Colors.green[400],
      ),
      backgroundColor: Colors.white,
      body: ListView.builder(
          itemCount: 8,
          itemBuilder: (BuildContext content, int index) {
            return Card(
                elevation: 20,
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.assignment_ind,
                    size: 40,
                    color: Colors.black54,
                  ),
                  trailing: Icon(
                    Icons.add,
                    size: 30,
                    color: Colors.grey,
                  ),
                  title: Text(course.getCourse(index)),
                  subtitle: Text(course.getCode(index)),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => ClassInfo(classInfo: course.getDesc(index),)));
                  },
                )
            );
          }),
    );
  }
}