
import 'package:flutter/widgets.dart';
import 'package:flutter_intermedio_app/src/ui/pages/home/home_page.dart';


import '../ui/pages/forgot_password_page/forgot_password_page.dart';
import '../ui/pages/login/login_page.dart';
import '../ui/pages/onboard/onboard_page.dart';
import '../ui/pages/register/register_page.dart';
import '../ui/pages/welcome/welcome_page.dart';
import 'routes.dart';

abstract class Pages{
  static const String INITIAL = Routes.ONBOARD;
  static final Map<String, Widget Function(BuildContext)> routes = {
    Routes.ONBOARD: (_) => OnboardPage(),
    Routes.WELCOME:(_) => WelcomePage(),
    Routes.LOGIN:(_) => LoginPage(),
    Routes.REGISTER:(_) => const RegisterPage(),
    Routes.FORGOT_PASSWORD: (_) => const ForgotPasswordPage(),
    Routes.HOME: (_) => const HomePage(),
  };
}