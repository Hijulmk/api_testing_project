import 'dart:convert';

import 'package:api_testing_project/controllers/user_controller.dart';
import 'package:api_testing_project/models/user_model.dart';
import 'package:flutter/material.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
          future: UserController().getSingleUserData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              User user = snapshot.data!;
              return Center(
                  child: Column(
                children: [
                  Text(user.name!),
                  Text(user.email!),
                ],
              ));
            } else {
              return const Center(
                child: Text("loading"),
              );
            }
          }),
    );
  }
}
