import 'dart:async';

import 'package:alma/repositories/login_repository.dart';

class LoginBloc {
  final streamController = StreamController<bool>();

  Future login(String email, String password) async {
    try {
      streamController.sink.add(true);

      final LoginRepository _repository = LoginRepository();

      final responseLogin = await _repository.login(email, password);

      streamController.sink.add(false);
      return responseLogin;
    } catch (e) {
      streamController.sink.add(false);
      throw Exception('Falha na tentativa de login $e');
    }
  }

  void dispose() {
    streamController.close();
  }
}
