import 'package:flutter/cupertino.dart';

import '../../global_widgets/custom_form.dart';

class RegisterController extends ChangeNotifier{
  String _email = "", _name = "",_lastname = "";
  GlobalKey<CustomFormState> formKey = GlobalKey();

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
    return true;
  }
}