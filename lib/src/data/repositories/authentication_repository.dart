import 'package:flutter_intermedio_app/src/data/models/user.dart';
import 'package:flutter_intermedio_app/src/data/providers/authentication_api.dart';

abstract class AuthenticationRepository{
  Future<User?> login(String email, String password);
  Future<bool>? register(User user);
  Future<bool>? sendResetToken(String email);


}
