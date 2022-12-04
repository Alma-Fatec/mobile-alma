import 'package:alma/src/api/alma_api.dart';
import 'package:alma/src/models/box/box.dart';
import 'package:alma/src/models/models.dart';
import 'package:alma/src/utils/objectbox.dart';
import 'package:alma/src/utils/shared_pref.dart';

class UserRepository {
  UserRepository({required this.almaApi, required this.boxProvider});

  AlmaApi almaApi;
  ObjectBoxProvider boxProvider;

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
      saveLocalUser(authUser.user!);
      return authUser;
    } catch (e) {
      throw Exception('Erro na requisição $e');
    }
  }

  void logout() {
    boxProvider.removeAll();
  }

  void saveLocalUser(User user) {
    boxProvider.getUserBox().removeAll();
    boxProvider.getUserBox().put(user.toBox());
  }

  void saveUserMetadata(User user) {
    boxProvider.getUserMetadata().removeAll();
    boxProvider.getUserMetadata().put(UserMetadata.fromUser(user));
  }

  void updateUserMetadata(UserMetadata metadata) {
    

  }

  User getCurrentUser() {
    final user = boxProvider.getUserBox().getAll();
    return User.fromBox(user.first);
  }

  UserMetadata getCurrentUserMetadata() {
    final metadata = boxProvider.getUserMetadata().getAll().first;
    return metadata;
  }
}
