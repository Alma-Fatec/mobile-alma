import 'dart:async';

import 'package:alma/models/user/User.dart';
import 'package:alma/repositories/user_repository.dart';

class SignupBloc {
  final streamController = StreamController<bool>();
  final toastController = StreamController<String>();

  Future signup(User user) async {
    try {
      streamController.sink.add(true);

      final UserRepository _repository = UserRepository();
      await _repository.signup(user);

      streamController.sink.add(false);
      toastController.sink.add("Cadastro realizado com sucesso");
    } catch (e) {
      streamController.sink.add(false);
      toastController.sink.add(e.toString());
      rethrow;
    }
  }
}