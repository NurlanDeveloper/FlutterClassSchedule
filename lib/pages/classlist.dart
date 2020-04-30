import 'package:flutter/material.dart';
import 'package:flutterclasses/courses.dart';
import 'classinfo.dart';

// List of classes
// Students will be able to click on the course for
// the course info and click on the plus to be
// enrolled in the course

// ignore: must_be_immutable
class ClassList extends StatelessWidget {

//  final String classlist;
//
//  const ClassList({Key key, this.classlist}) : super(key: key);

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
                    Icons.assignment,
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
                        builder: (context) => ClassInfo(classInfo: course.getCode(index),)));
                  },
                )
            );
          }),
    );
  }
}