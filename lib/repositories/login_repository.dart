import 'dart:convert';
import 'dart:developer';

import 'package:alma/utils/shared_pref.dart';
import 'package:http/http.dart' as http;
import 'package:alma/utils/url.dart' as url;

class LoginRepository {
  Future login(String email, String password) async {
    try {
      final response = await http.post(
        Uri.parse(url.session),
        body: jsonEncode({"email": email, "password": password}),
        headers: {"Content-Type": "application/json"},
      );

      if (response.statusCode != 201) {
        log(response.body);
        throw Exception(
            'Não foi possível realizar a requisição status: ${response.statusCode}');
      }

      Map<String, dynamic> resp = jsonDecode(response.body);

      await SharedPref().save("tokenSession", resp['token']);

      return resp['token'];
    } catch (e) {
      throw Exception('Erro na requisição $e');
    }
  }
}
