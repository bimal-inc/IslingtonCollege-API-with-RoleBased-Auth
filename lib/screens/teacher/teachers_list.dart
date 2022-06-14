import 'package:flutter/material.dart';
// import 'StudentList.dart';
// import 'posts.dart';
import 'dart:convert';
//import

import 'package:islingtoncollege/models/new-model.dart';
import 'package:islingtoncollege/utils/constants.dart';
//import 'package:islingtoncollege/models/college_model.dart';

//import http
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:islingtoncollege/screens/notification/notification.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;

// ignore: must_be_immutable
class TeacherDetails extends StatefulWidget {
  TeacherDetails({Key? key}) : super(key: key);
  static Color mainColor = const Color(0xff3FACC2);
  static const String urll = 'https://jsonkeeper.com/b/16VC';

  @override
  State<TeacherDetails> createState() => _TeacherDetailsState();
}

class _TeacherDetailsState extends State<TeacherDetails> {
  double buttonsHeight = 50;

  AppBar appBar = AppBar(
    centerTitle: true,
    elevation: 0.0,
    leading: const Icon(Icons.search),
    backgroundColor: TeacherDetails.mainColor,
  );

  String token = '62a2cfc3-10ba-424c-bc20-246e7ed2775c';

  Future<Welcome> getUserApi() async {
    final response = await http.get(Uri.parse(TeacherDetails.urll));
    var data = jsonDecode(response.body);
    //debugPrint("data: $data");
    if (response.statusCode == 200) {
      //print(response.statusCode);
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
  void initState() {
    super.initState();

    tz.initializeTimeZones();
  }

  bool chatisActive = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        leading: const Icon(Icons.search),
        backgroundColor: TeacherDetails.mainColor,
      ),
      body: FutureBuilder<Welcome>(
        future: getUserApi(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data!.list!.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      sendNotification(
                          title: "Hello Prashant sir",
                          body: "Notification is Workingg");
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Container(
                          height: 200,
                          color: Colors.deepPurple[200],
                          child: InkWell(
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
                                            snapshot.data!.list![index]
                                                .moduleDto!.name
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
                                            opacity: 0.8,
                                            child: Text(
                                              snapshot.data!.list![index]
                                                  .userDto!.name
                                                  .toString(),
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14,
                                                  color: Colors.black),
                                            ),
                                          ),
                                          Opacity(
                                            opacity: 0.8,
                                            child: Text(
                                              'year: ${snapshot.data!.list![index].year}',
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14,
                                                  color: Colors.black),
                                            ),
                                          ),
                                          Opacity(
                                            opacity: 0.8,
                                            child: Text(
                                              'Specilization ${snapshot.data!.list![index].specialization}',
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14,
                                                  color: Colors.black),
                                            ),
                                          ),
                                          Opacity(
                                            opacity: 0.8,
                                            child: Text(
                                              snapshot.data!.list![index]
                                                      .roomDto!.name
                                                      .toString() +
                                                  " - " +
                                                  'Block: ' +
                                                  snapshot.data!.list![index]
                                                      .roomDto!.block
                                                      .toString(),
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14,
                                                  color: Colors.black),
                                            ),
                                          ),
                                          Opacity(
                                            opacity: 0.8,
                                            child: Text(
                                              'Module Code: ${snapshot.data!.list![index].moduleDto!.code}',
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
                          )),
                    ),
                  );
                });
          } else {
            return const Text('asd');
          }
        },
      ),
    );
  }
}
