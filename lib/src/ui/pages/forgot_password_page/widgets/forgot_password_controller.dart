import 'package:flutter/cupertino.dart';
import 'package:flutter_intermedio_app/src/data/repositories/authentication_repository.dart';
import 'package:flutter_intermedio_app/src/helpers/get.dart';

class ForgotPasswordController extends ChangeNotifier {
  String _email = "";

  String get getEmail => _email;

  final AuthenticationRepository _repository = Get.i.find<AuthenticationRepository>();

  void onEmailChanged(String text) {
    _email = text;
  }

  Future<bool>? submit(){
    return _repository.sendResetToken(_email);

  }
}
