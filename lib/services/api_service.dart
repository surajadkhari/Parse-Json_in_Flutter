import 'export_service.dart';

class Apiservice {
  List<UsersModel> userData = [];
  Future<dynamic> fetchData() async {
    var response = await get(Uri.parse(endPoint));
    List jsonData = jsonDecode(response.body)['data'];

    jsonData.forEach((element) {
      userData.add(UsersModel.fromJson(element));
    });
    return userData;
  }
}
