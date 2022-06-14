// import 'StudentList.dart';
// import 'posts.dart';
import 'dart:convert';
//import

import 'package:flutter/material.dart';
import 'package:islingtoncollege/models/new-model.dart';
import 'package:islingtoncollege/utils/constants.dart';
//import 'package:islingtoncollege/models/college_model.dart';

//import http
import 'package:http/http.dart' as http;

class ModuleDetails extends StatelessWidget {
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

  ModuleDetails({Key? key}) : super(key: key);
  bool chatisActive = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Module Details'),
          centerTitle: true,
        ),
        body: FutureBuilder<Welcome>(
            future: getUserApi(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: snapshot.data!.list!.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: kDefaultPadding,
                              vertical: kDefaultPadding * 0.75),
                          child: Row(
                            children: [
                              Stack(
                                children: [
                                  const CircleAvatar(
                                    radius: 24,
                                    backgroundImage: NetworkImage(
                                        'https://i.ytimg.com/vi/SBKqL8tZsTE/maxresdefault.jpg'),
                                  ),
                                  if (chatisActive)
                                    Positioned(
                                      right: 0,
                                      bottom: 0,
                                      child: Container(
                                        height: 16,
                                        width: 16,
                                        decoration: BoxDecoration(
                                          color: kPrimaryColor,
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Theme.of(context)
                                                .scaffoldBackgroundColor,
                                            width: 3,
                                          ),
                                        ),
                                      ),
                                    )
                                ],
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: kDefaultPadding),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        snapshot
                                            .data!.list![index].moduleDto!.name
                                            .toString(),
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                            color: Colors.black),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Opacity(
                                        opacity: 0.64,
                                        child: Text(
                                          snapshot
                                              .data!.list![index].userDto!.name
                                              .toString(),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  Opacity(
                                    opacity: 0.64,
                                    child: Text(
                                      snapshot.data!.list![index].startTime
                                          .toString(),
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: Colors.black),
                                    ),
                                  ),
                                  Opacity(
                                    opacity: 0.64,
                                    child: Text(
                                      snapshot.data!.list![index].endTime
                                          .toString(),
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: Colors.black),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    });
              } else {
                return const Text('asd');
              }
            }));
  }
}
