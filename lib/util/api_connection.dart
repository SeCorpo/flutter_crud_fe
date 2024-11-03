import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiConnection {
  final String _baseUrl = 'http://localhost:6969/api';

  Future<bool> login(String username, String password) async {
    final url = Uri.parse('$_baseUrl/login');
    final response = await http.post(
      url,
      body: {
        'username': username,
        'password': password,
      },
    );

    if (response.statusCode == 200) {
      final responseBody = jsonDecode(response.body);
      return responseBody['success'];
    } else {
      print('Login failed with status: ${response.statusCode}');
      return false;
    }
  }

  Future<bool> register(String username, String password) async {
    final url = Uri.parse('$_baseUrl/register');
    final response = await http.post(
      url,
      body: {
        'username': username,
        'password': password,
      },
    );

    if (response.statusCode == 200) {
      final responseBody = jsonDecode(response.body);
      return responseBody['success'];
    } else {
      print('Registration failed with status: ${response.statusCode}');
      return false;
    }
  }
}
