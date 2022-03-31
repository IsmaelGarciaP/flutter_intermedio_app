import 'package:flutter_intermedio_app/src/data/providers/authentication_provider.dart';
import 'package:flutter_intermedio_app/src/data/repositories/authentication_repository.dart';
import 'package:flutter_intermedio_app/src/data/repositories_imaplematation/authentication_repository_impl.dart';
import 'package:flutter_intermedio_app/src/helpers/get.dart';

abstract class DependencyInjection {
  static void initialize() {
    final AuthenticationRepository authenticationRepository =
        AuthenticationRepositoryImpl(
      AuthenticationProvider(),
    );

    Get.i.put<AuthenticationRepository>(authenticationRepository);
    Get.i.put<String>("API_KEY",tag: "apiKey");
  }
}
