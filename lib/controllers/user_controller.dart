import 'dart:convert';

import 'package:api_testing_project/models/user_model.dart';
import 'package:http/http.dart' as http;

class UserController {
  Future<User> getSingleUserData() async {
    final result = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/users/1"));
    Map<String, dynamic> data = jsonDecode(result.body);
    User user = User.fromJson(data);
    return user;
  }

  Future<List<User>> getAllUsers() async {
    final result =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
    List listJson = jsonDecode(result.body);
    List<User> users = listJson.map((json) => User.fromJson(json)).toList();
    return users;
  }
}
