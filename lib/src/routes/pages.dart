
import 'package:flutter/widgets.dart';
import 'package:flutter_intermedio_app/src/pages/login/login_page.dart';
import 'package:flutter_intermedio_app/src/pages/onboard/onboard_page.dart';
import 'package:flutter_intermedio_app/src/pages/register/register_page.dart';
import 'package:flutter_intermedio_app/src/pages/welcome/welcome_page.dart';

import 'routes.dart';

abstract class Pages{
  static const String INITIAL = Routes.ONBOARD;
  static final Map<String, Widget Function(BuildContext)> routes = {
    Routes.ONBOARD: (_) => OnboardPage(),
    Routes.WELCOME:(_) => WelcomePage(),
    Routes.LOGIN:(_) => LoginPage(),
    Routes.REGISTER:(_) => RegisterPage(),
  };
}