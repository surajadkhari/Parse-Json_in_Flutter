import 'dart:convert';

import 'package:parse_json_flutter/models/user_model.dart';

import 'export_service.dart';

class Apiservice {
  Future<dynamic> fetchData() async {
    Response response = await get(Uri.parse(endPoint));
    List jsonData = jsonDecode(response.body)['data'];
  }
}
