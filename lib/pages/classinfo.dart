import 'package:flutter/material.dart';
import 'home.dart';

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