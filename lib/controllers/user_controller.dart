import 'package:http/http.dart' as http;

class UserController {
  Future<String> getSingleUserData() async {
    final result = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/users/1"));
        
    return result.body;
  }
}
