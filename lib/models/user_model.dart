import 'package:flutter/foundation.dart';

class UsersModel {
  final int id;
  final String email;
  final String first_name;
  final String last_name;
  final String avatar;
  UsersModel(
      {required this.id,
      required this.email,
      required this.first_name,
      required this.last_name,
      required this.avatar});

  //Map
  factory UsersModel.fromJson(Map<String, dynamic> json) => UsersModel(
      id: json['id'],
      email: json['email'],
      first_name: json['first_name'],
      last_name: json['last_name'],
      avatar: json['avatar']);
}
