
import '../models/user.dart';
import '../providers/authentication_api.dart';
import '../repositories/authentication_repository.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final AuthenticationAIP _authenticationAIP;

  AuthenticationRepositoryImpl(this._authenticationAIP);

  @override
  Future<User?> login(String email, String password) {
    return _authenticationAIP.login(email, password);
  }

  @override
  Future<bool>? register(User user) {
    return null;
  }

  @override
  Future<bool>? sendResetToken(String email) {
    return null;
  }
}
