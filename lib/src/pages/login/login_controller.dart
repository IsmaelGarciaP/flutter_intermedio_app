import 'package:flutter/cupertino.dart';

import 'package:flutter_intermedio_app/src/data/repositories/authentication_repository.dart';

import '../../data/models/user.dart';
import '../../helpers/get.dart';

class LoginConrtoller extends ChangeNotifier {
  String _email = "", _password = "";
  final AuthenticationRepository? _repository =
      Get.i.find<AuthenticationRepository>();

  void onEmailChanged(String text) {
    _email = text;
  }

  void onPasswordChanged(String text) {
    _password = text;
  }

  Future<User?> submit() async {
    return _repository!.login(_email, _password);
  }
}
