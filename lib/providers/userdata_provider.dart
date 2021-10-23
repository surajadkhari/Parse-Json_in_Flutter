import 'package:parse_json_flutter/services/export_service.dart';

import 'export_provider.dart';

//Statenotifer provider Class
class UserNotifier extends StateNotifier<List<UsersModel>> {
  UserNotifier() : super([]) {
    loadData();
  }

  loadData() async {
    state = await Apiservice().fetchData();
  }
}

//Statenotifier provider

final userListProvider = StateNotifierProvider<UserNotifier, List<UsersModel>>(
    (ref) => UserNotifier());
