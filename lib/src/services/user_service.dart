import 'package:alma/src/models/models.dart';
import 'package:alma/src/repositories/user_repository.dart';

class UserService {
  UserService({required UserRepository userRepository}) : _userRepository = userRepository;

  final UserRepository _userRepository;

  Future<AuthUser> login(String email, String password) async {
    try {
      return await _userRepository.login(email, password);
    } catch (e) {
      rethrow;
    }
  }

  Future<User> signup(User user) async {
    try {
      return await _userRepository.signup(user);
    } catch (e) {
      rethrow;
    }
  }
}
