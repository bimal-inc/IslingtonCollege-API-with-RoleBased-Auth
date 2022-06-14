import 'dart:convert';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import http
import 'package:http/http.dart' as http;
import 'package:islingtoncollege/screens/register/register.dart';
import 'package:islingtoncollege/screens/notification/notification.dart';
import 'package:islingtoncollege/services/services.dart';
import 'firebase_options.dart';

import 'models/new-model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  Future<Welcome> getUserApi() async {
    final response = await http.get(Uri.parse(url), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    });
    if (response.statusCode == 200) {
      return Welcome.fromJson(json.decode(response.body));
    } else {
      return Welcome.fromJson(json.decode(response.body));
    }
    print('Token : $token');
    print(response);
  }

  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.orange,
          primaryColor: Colors.white,
          textTheme:
              const TextTheme(bodyText2: TextStyle(color: Colors.white))),
      home: Register(),
    );
  }
}
