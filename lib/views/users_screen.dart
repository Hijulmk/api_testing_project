import 'package:api_testing_project/controllers/user_controller.dart';
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
              return Center(child: Text(snapshot.data!));
            } else {
              return const Center(
                child: Text("loading"),
              );
            }
          }),
    );
  }
}
