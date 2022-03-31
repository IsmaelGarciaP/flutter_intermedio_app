import 'package:flutter/material.dart';
import 'package:flutter_intermedio_app/src/helpers/dependency_injection.dart';

import 'src/my_app.dart';

void main() {
  DependencyInjection.initialize();
  runApp(const MyApp());
}
