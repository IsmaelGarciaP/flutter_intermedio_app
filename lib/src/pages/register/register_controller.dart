import 'package:flutter/cupertino.dart';

class RegisterController extends ChangeNotifier{
  String _email = "", _name = "",_lastname = "";

  void onEmailChanged(String text){
    _email = text;
  }
  void onNameChanged(String text){
    _name = text;
  }
  void onLastnameChanged(String text){
    _lastname = text;
  }
  Future<bool> submit() async{
    return false;
  }
}