import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:islingtoncollege/screens/teacher/teacher.dart';
import 'package:islingtoncollege/screens/teacher/teachers_list.dart';

//demo page for the app // NOT USED IN THIS APP
class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FlutterFire UI'),
      ),
      body: TeacherDetails(),
    );
  }
}

//demo page for the app // NOT USED IN THIS APP