import 'export_service.dart';

class Apiservice {
  List<UsersModel> userData = [];
  Future<dynamic> fetchData() async {
    var response = await get(Uri.parse(endPoint));
    List jsonData = jsonDecode(response.body)['data'];



//Using for each

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
