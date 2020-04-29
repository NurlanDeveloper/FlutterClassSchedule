import 'package:flutter/material.dart';
import 'studenthome.dart';


// Class Info
// When a student clicks on a course they will
// be brought here where the class name, id, and
// description will be shown.

class ClassInfo extends StatelessWidget {

  final String classInfo;

  const ClassInfo({Key key, this.classInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.classInfo),
          backgroundColor: Colors.green[400],
        ),
        body: Container(
            child: RaisedButton(
              child: Text("Go Back"),
              onPressed:  () {
                Navigator.pop(context);
              },
            )
        )
    );
  }
}