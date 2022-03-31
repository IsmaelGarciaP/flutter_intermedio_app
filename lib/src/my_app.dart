import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_intermedio_app/src/routes/pages.dart';
import 'package:flutter_intermedio_app/src/utils/fonts_styles.dart';

import 'utils/colors.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: primaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: FontSyles.textTheme,
        cupertinoOverrideTheme: CupertinoThemeData(
          primaryColor: primaryColor,
          textTheme: CupertinoTextThemeData(
            textStyle: FontSyles.normal,
          ),
        ),
      ),
      initialRoute: Pages.INITIAL,
      routes: Pages.routes,
    );
  }
}
