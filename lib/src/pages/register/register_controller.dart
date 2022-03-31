import 'package:flutter/cupertino.dart';
import 'package:flutter_intermedio_app/src/data/models/user.dart';

import '../../data/providers/authentication_provider.dart';
import '../../data/repositories/authentication_repository.dart';
import '../../data/repositories_imaplematation/authentication_repository_impl.dart';
import '../../global_widgets/custom_form.dart';

class RegisterController extends ChangeNotifier{
  String _email = "", _name = "",_lastname = "";
  GlobalKey<CustomFormState> formKey = GlobalKey();
  final AuthenticationRepository _repository = AuthenticationRepositoryImpl(AuthenticationProvider());

  void onEmailChanged(String text){
    _email = text;
  }
  void onNameChanged(String text){
    _name = text;
  }
  void onLastnameChanged(String text){
    _lastname = text;
  }
  Future<bool?> submit() async{
    return _repository.register(User(id: null, email: _email, name: _name, lastname: _lastname, birthday: null));
  }
}