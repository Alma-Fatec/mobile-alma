import 'package:alma/src/models/models.dart';
import 'package:alma/src/repositories/user_repository.dart';

class UserService {
  UserService({required UserRepository userRepository}) : _userRepository = userRepository;

  final UserRepository _userRepository;

  Future<AuthUser> login(String email, String password) async {
    return await _userRepository.login(email, password);
  }

  Future<User> signup(User user) async {
    return await _userRepository.signup(user);
  }
}
