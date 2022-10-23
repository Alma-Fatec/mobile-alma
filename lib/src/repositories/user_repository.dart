import 'package:alma/src/api/alma_api.dart';
import 'package:alma/src/models/models.dart';
import 'package:alma/src/utils/shared_pref.dart';

class UserRepository {
  UserRepository({required this.almaApi});

  AlmaApi almaApi;

  Future<User> signup(User user) async {
    try {
      return await almaApi.signup(user);
    } catch (e) {
      rethrow;
    }
  }

  Future<AuthUser> login(String email, String password) async {
    try {
      AuthUser authUser = await almaApi.login(User(email: email, password: password));
      final pref = SharedPref();
      await pref.save('token', authUser.token);
      await pref.save('user_id', authUser.user!.id);

      return authUser;
    } catch (e) {
      throw Exception('Erro na requisição $e');
    }
  }
}
