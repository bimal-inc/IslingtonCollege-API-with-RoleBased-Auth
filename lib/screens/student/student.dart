import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:islingtoncollege/models/new-model.dart';
import 'package:http/http.dart' as http;
import 'package:islingtoncollege/screens/teacher/teachers_list.dart';

import '../Login/login.dart';
import '../../models/model_firebase.dart';

class Student extends StatefulWidget {
  String id;
  Student({required this.id});
  @override
  _StudentState createState() => _StudentState(id: id);
}

class _StudentState extends State<Student> {
  static const String urll = 'https://jsonkeeper.com/b/16VC';

  String token = '3e90d24a-3f1a-408e-ab9e-f5148ff557e7';
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

  String id;
  var rooll;
  var emaill;
  UserModel loggedInUser = UserModel();

  _StudentState({required this.id});
  @override
  void initState() {
    super.initState();
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
  final Stream<QuerySnapshot> _usersStream =
      FirebaseFirestore.instance.collection('posts').snapshots();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: const [
            Icon(Icons.school),
            SizedBox(
              width: 10,
            ),
            Text(
              "Student Portal",
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              logout(context);
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: StreamBuilder(
          stream: _usersStream,
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return const Text("something is wrong");
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            return Padding(
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
                                        debugPrint("Tapped");
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  TeacherDetails()),
                                        );
                                      }),
                                      child: Container(
                                        alignment: Alignment.center,
                                        width: 300,
                                        height: 107,
                                        decoration: BoxDecoration(
                                          color: const Color(0xffefeeee),
                                          borderRadius:
                                              BorderRadius.circular(36),
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
                                          snapshot.data!.list![index]
                                              .groupList![0].name
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
              ),
            );
          }),
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
