import 'dart:async';

import 'package:alma/models/user/User.dart';
import 'package:alma/repositories/user_repository.dart';

class SignupBloc {
  final streamController = StreamController<bool>();

  Future signup(User user) async {
    try {
      streamController.sink.add(true);

      final UserRepository _repository = UserRepository();
      await _repository.signup(user);

      streamController.sink.add(false);
    } catch (e) {
      streamController.sink.add(false);
      rethrow;
    }
  }
}