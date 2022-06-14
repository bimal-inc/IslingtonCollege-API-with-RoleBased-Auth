import 'package:http/http.dart' as http;
import 'dart:convert';

import '../models/new-model.dart';

String url =
    'http://110.44.117.187:8765/attendance-system/api/routine/findAllRoutineByPagination?page=1&size=30';

String token = '918089f2-f305-4d00-9d21-b6a47bf1c151';

class UserModels {
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
}
