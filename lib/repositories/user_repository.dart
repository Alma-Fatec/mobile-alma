import 'dart:convert';
import 'dart:developer';

import 'package:alma/models/user/User.dart';
import 'package:http/http.dart' as http;
import 'package:alma/utils/url.dart' as url;

class UserRepository {
  Future<bool> signup(User user) async {
    try {
      final response = await http.post(
        Uri.parse(url.user),
        body: jsonEncode(user.toJson()),
        headers: {"Content-Type": "application/json"},
      );

      if (response.statusCode != 201) {
        String serverMsg = jsonDecode(response.body)["error"];
        log(serverMsg);
        throw Exception("$serverMsg: ${response.statusCode}");
      }

      return true;
    } catch (e) {
      rethrow;
    }
  }
}