import 'package:flutter/cupertino.dart';
import 'package:flutter_intermedio_app/src/data/providers/authentication_provider.dart';
import 'package:flutter_intermedio_app/src/data/repositories/authentication_repository.dart';
import 'package:flutter_intermedio_app/src/data/repositories_imaplematation/authentication_repository.dart';

import '../../data/models/user.dart';

class LoginConrtoller extends ChangeNotifier {
  String _email = "", _password = "";
  final AuthenticationRepository _repository = AuthenticationRepositoryImpl(AuthenticationProvider());
  //final _api = AuthenticationAIP();

  void onEmailChanged(String text) {
    _email = text;
  }

  void onPasswordChanged(String text) {
    _password = text;
  }

  void submit() async {
    final User? user = await _repository.login(_email, _password);
    if (user != null) {
      print("Login ok");
    } else {
      print("Login failed");
    }
  }
}
