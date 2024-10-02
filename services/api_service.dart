import '''
package:http/http.dart''' as http;
import 'dart:convert';

class ApiService {
  static Future<bool> login(String email, String password, dynamic eve) async {
    final response = await http.post(
      Uri.parse('URL: https://reqres.in/api/login'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'email': email, 'password': password}),
    );

    return response.statusCode == 200;
  }
}
