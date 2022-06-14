import 'dart:convert';
import 'package:http/http.dart' as http;
//import

import 'package:flutter/material.dart';
import 'package:islingtoncollege/models/new-model.dart';

class Modules extends StatefulWidget {
  const Modules({Key? key}) : super(key: key);

  @override
  State<Modules> createState() => _ModulesState();
}

class _ModulesState extends State<Modules> {
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

  @override
  Widget build(BuildContext context) {
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
              "Modules Portal",
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
                                    debugPrint("Tapped");
                                  }),
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    width: 350,
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
                                          .data!.list![index].moduleDto!.name
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
}
