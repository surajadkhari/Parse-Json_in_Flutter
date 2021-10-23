import 'dart:convert';

import 'package:parse_json_flutter/models/user_model.dart';

import 'export_service.dart';

class Apiservice {
  Future<dynamic> fetchData() async {
    Response response = await get(Uri.parse(endPoint));
    List jsonData = jsonDecode(response.body)['data'];

//Mapping
    List userData = [];
    for (int index = 0; index < jsonData.length; index++) {
      userData.add(
        UsersModel(
            id: jsonData[index]['id'],
            email: jsonData[index]['email'],
            first_name: jsonData[index]['first_name'],
            last_name: jsonData[index]['last_name'],
            avatar: jsonData[index]['avatar']),
      );
    }
    return userData;
  }
}
