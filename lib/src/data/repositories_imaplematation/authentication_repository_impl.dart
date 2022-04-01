import '../models/user.dart';
import '../providers/authentication_provider.dart';
import '../repositories/authentication_repository.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final AuthenticationProvider _authenticationAIP;

  AuthenticationRepositoryImpl(this._authenticationAIP);

  @override
  Future<User?> login(String email, String password) {
    return _authenticationAIP.login(email, password);
  }

  @override
  Future<bool>? register(User user) {
    return _authenticationAIP.register(user);
  }

  @override
  Future<bool>? sendResetToken(String email) {
    return _authenticationAIP.sendResetToken(email);
  }
}
