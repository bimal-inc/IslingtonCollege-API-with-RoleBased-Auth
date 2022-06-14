// import 'StudentList.dart';
// import 'posts.dart';
import 'dart:convert';
//import

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:islingtoncollege/screens/teacher/module_details.dart';
import 'package:islingtoncollege/models/new-model.dart';
import 'package:islingtoncollege/screens/notification/notification.dart';
//import 'package:islingtoncollege/models/college_model.dart';

import '../Login/login.dart';
import '../../models/model_firebase.dart';
//import http
import 'package:http/http.dart' as http;

class Teacher extends StatefulWidget {
  String id;
  Teacher({required this.id});
  @override
  _TeacherState createState() => _TeacherState(id: id);
}

class _TeacherState extends State<Teacher> {
  static const String urll = 'https://jsonkeeper.com/b/16VC';

  String token = '62a2cfc3-10ba-424c-bc20-246e7ed2775c';
  Future<Welcome> getUserApi() async {
    final response = await http.get(Uri.parse(urll));
    var data = jsonDecode(response.body);
    debugPrint("data: $data");
    if (response.statusCode == 200) {
      print(response.statusCode);
      return Welcome.fromJson(data);
    } else {
      //print(response.statusCode);
      return Welcome.fromJson(data);
      print(response.statusCode);
    }
    print('Token : $token');
    print(response);
  }
  // String url =
  //     'http://110.44.117.187:8765/attendance-system/api/routine/findAllRoutineByPagination?page=1&size=30';

  // String token = '918089f2-f305-4d00-9d21-b6a47bf1c151';
  // Future<Welcome> getUserApi() async {
  //   http.Response response = await http.get(Uri.parse(url), headers: {
  //     'Content-Type': 'application/json',
  //     'Authorization': 'Bearer 918089f2-f305-4d00-9d21-b6a47bf1c151',
  //   });
  //   if (response.statusCode == 200) {
  //     print('Token : $token');
  //     print(response.statusCode);
  //     return Welcome.fromJson(json.decode(response.body.toString()));
  //   } else {
  //     return Welcome.fromJson(json.decode(response.body.toString()));
  //   }
  //   print('Token : $token');
  //   print(response);
  // }

  Future<Welcome?> fetchApi() async {
    try {
      Welcome welcome = await getUserApi();
      print(welcome.toJson());
      return welcome;
    } catch (e) {
      print(e);
      return null;
    }
  }

  String id;
  var rooll;
  var emaill;
  UserModel loggedInUser = UserModel();

  _TeacherState({required this.id});
  @override
  void initState() {
    super.initState();
    fetchApi();
    FirebaseFirestore.instance
        .collection("users") //.where('uid', isEqualTo: user!.uid)
        .doc(id)
        .get()
        .then((value) {
      loggedInUser = UserModel.fromMap(value.data());
    }).whenComplete(() {
      const CircularProgressIndicator();
      setState(() {
        emaill = loggedInUser.email.toString();
        rooll = loggedInUser.wrool.toString();
        id = loggedInUser.uid.toString();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    Offset distance = const Offset(28, 28);
    double blur = 30.0;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.school),
            SizedBox(
              width: 10,
            ),
            Text(
              "Teacher Portal",
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              //logout(context);
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Expanded(
                child: FutureBuilder<Welcome>(
                  future: getUserApi(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                        itemCount: snapshot.data!.list!.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              alignment: Alignment.center,
                              transformAlignment: Alignment.center,
                              child: Container(
                                color: const Color(0xffefeeee),
                                child: GestureDetector(
                                  onTap: (() {
                                    sendNotification(
                                        title:
                                            "Hello worlffffffffffffffffffffd",
                                        body:
                                            "My first flutteffffffffffffffr notification");
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ModuleDetails())

                                        //builder: (context) => Modules()),
                                        );
                                  }),
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 300,
                                    height: 107,
                                    decoration: BoxDecoration(
                                      color: const Color(0xffefeeee),
                                      borderRadius: BorderRadius.circular(36),
                                      gradient: const LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Color(0xffefeeee),
                                          Color(0xffefeeee),
                                        ],
                                      ),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          offset: Offset(-11.4, -11.4),
                                          blurRadius: 35,
                                          spreadRadius: 0.0,
                                        ),
                                        BoxShadow(
                                          color: Color(0xffbdbcbc),
                                          offset: Offset(11.4, 11.4),
                                          blurRadius: 35,
                                          spreadRadius: 0.0,
                                        ),
                                      ],
                                    ),
                                    child: Text(
                                      snapshot
                                          .data!.list![index].groupList![0].name
                                          .toString(),
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    } else {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
                ),
              ),
            ],
          )),
    );
  }

  Future<void> logout(BuildContext context) async {
    const CircularProgressIndicator();
    await FirebaseAuth.instance.signOut();

    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => LoginPage(),
      ),
    );
  }
}
